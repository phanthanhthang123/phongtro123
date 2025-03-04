import db from "../models";
import { v4 } from "uuid";
//cac thu vien ma hoa, bam pass
import bcrypt from "bcrypt"; //bam pass
import genarateCode from "../ultis/genarateCode";
import chothuecanho from "../../data/chothuecanho.json";
import chothuematbang from "../../data/chothuematbang.json";
import chothuphongtro from "../../data/chothuephongtro.json";
import nhachothue from "../../data/nhachothue.json";
import { dataArea, dataPrice } from "../ultis/data";
import { getNumberFromString,getNumberFromStringV2 } from "../ultis/common";

require("dotenv").config();

const dataBody = [
    { 
        value: chothuecanho.body, 
        code: "CTCH" 
    },
    { 
        value: chothuematbang.body, 
        code: "CTMB" 
    },
    { 
        value: chothuphongtro.body, 
        code: "CTPT" 
    },
    { 
        value: nhachothue.body, 
        code: "NCT" 
    },
];
// const dataBody = nhachothue.body
//ma hoa pass

const hashPassword = (password) =>
  bcrypt.hashSync(password, bcrypt.genSaltSync(12));

export const insertServices = () =>
  new Promise(async (resolve, reject) => {
    try {
      const provinceCodes = [];
      const labelCodes = [];
      dataBody.forEach((cate) => {
        cate.value.forEach(async (item) => {
          let postId = v4();
          let labelCode = genarateCode("Cho thuê phòng trọ tại đây").trim();
          let attributesId = v4();
          let userId = v4();
          let imagesId = v4();
          let overviewId = v4();

          let currentArea = getNumberFromString(
            item?.header?.attributes?.acreage
          );
          let currentPrice = getNumberFromString(
            item?.header?.attributes?.price
          );

          let provinceCode = genarateCode(
            item?.header?.address?.split(",").slice(-1)[0]
          ).trim();

          provinceCodes?.every(item => item?.code !== provinceCode) && provinceCodes.push({
            code : provinceCode,
            value : item?.header?.address?.split(",").slice(-1)[0].trim()
          })

          labelCodes?.every(item => item?.code !== labelCode) && labelCodes.push({
            code : labelCode,
            value : "Cho thuê phòng trọ tại đây",
          })

          await db.Post.create({
            id: postId,
            title: item?.header?.title,
            star: item?.header?.star,
            labelCode,
            address: item?.header?.address,
            attributesId,
            categoryCode: cate.code,
            description: JSON.stringify(item?.mainContent?.content),
            userId,
            overviewId,
            imagesId,
            areaCode: dataArea.find(
              (area) => area.max > currentArea && area.min <= currentArea
            )?.code,
            priceCode: dataPrice.find(
              (price) => price.max > currentPrice && price.min <= currentPrice
            )?.code,
            provinceCode,
            priceNumber: getNumberFromStringV2(item?.header?.attributes?.price),
            areaNumber: getNumberFromStringV2(item?.header?.attributes?.acreage)
          });

          await db.Attribute.create({
            id: attributesId,
            price: item?.header?.attributes?.price,
            acreage: item?.header?.attributes?.acreage,
            published: item?.header?.attributes?.published,
            hashtag: item?.header?.attributes?.hashtag,
          });

          await db.Image.create({
            id: imagesId,
            image: JSON.stringify(item?.images),
          });

          await db.Overview.create({
            id: overviewId,
            code: item?.overview?.content.find((i) => i.name === "Mã tin:")
              ?.content,
            area: item?.overview?.content.find((i) => i.name === "Khu vực")
              ?.content,
            type: item?.overview?.content.find(
              (i) => i.name === "Loại tin rao:"
            )?.content,
            target: item?.overview?.content.find(
              (i) => i.name === "Đối tượng thuê:"
            )?.content,
            bounus: item?.overview?.content.find((i) => i.name === "Gói tin:")
              ?.content,
            created: item?.overview?.content.find(
              (i) => i.name === "Ngày đăng:"
            )?.content,
            expire: item?.overview?.content.find(
              (i) => i.name === "Ngày hết hạn:"
            )?.content,
          });

          await db.User.create({
            id: userId,
            name: item?.contact?.content.find((i) => i.name === "Liên hệ:")
              ?.content,
            password: hashPassword("123456"),
            phone: item?.contact?.content.find((i) => i.name === "Điện thoại:")
              ?.content,
            zalo: item?.contact?.content.find((i) => i.name === "Zalo")
              ?.content,
          });
        });
      });

      provinceCodes?.forEach(async(item)=>{
        await db.Province.create(item);
      })

      labelCodes?.forEach(async(item)=>{
        await db.Label.create(item);
      })
      
      resolve("Done.");
    } catch (error) {
      reject(error);
    }
  });

export const createPricesAndArea = () =>
  new Promise(async (resolve, reject) => {
    try {
      dataPrice.forEach(async (item, index) => {
        await db.Price.create({
          code: item.code,
          order: index + 1,
          value: item.value,
        });
      });

      dataArea.forEach(async (item, index) => {
        await db.Area.create({
          code: item.code,
          order: index + 1,
          value: item.value,
        });
      });

      resolve("OK");
    } catch (error) {
      reject(error);
    }
  });
