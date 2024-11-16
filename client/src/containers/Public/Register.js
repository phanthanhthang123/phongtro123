import React, { useState,useEffect } from "react";
import { InputFrom, Button } from "../../components";
import { Link,useNavigate } from "react-router-dom";
import * as actions from "../../store/actions";
import { useDispatch,useSelector } from "react-redux";
import Swal from 'sweetalert2';

const Register = () => {
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const { isLoggedIn,msg,update  } = useSelector((state) => state.auth);

  useEffect(() => {
    isLoggedIn && navigate("/");
  }, [isLoggedIn]);

  useEffect(()=>{
    msg && Swal.fire("Opps !",msg,'error');
  },[msg, update]);

  const [payload, setPayload] = useState({
    phone: "",
    password: "",
    name: "",
  });

  //check input form
  const [invalidFeilds, setInvalidFeilds] = useState([]); //chua cac truong khong hop le
  const validate = (payload) => {
    let invalids = 0;
    let fiels = Object.entries(payload);
    fiels.forEach((item) => {
      if (item[1] === "") {
        setInvalidFeilds((prev) => [
          ...prev,
          {
            name: item[0],
            message: "Bạn không được bỏ trống trường này! ",
          },
        ]);
        invalids++;
      }
    });
    fiels.forEach((item) => {
      switch (item[0]) {
        case "password":
          if (item[1].length < 6) {
            setInvalidFeilds((prev) => [
              ...prev,
              {
                name: item[0],
                message: "Mật khẩu phải có tối thiểu 6 kí tự",
              },
            ]);
            invalids++;
          }
          break;
        case "phone":
          if (!+item[1]) {
            setInvalidFeilds((prev) => [
              ...prev,
              {
                name: item[0],
                message: "Số điện thoại không hợp lệ",
              },
            ]);
            invalids++;
          }
          break;
        default:
          break;
        }
    });
    return invalids;
    // console.log(fiels);
  };

  const handleSumbit = async () => {
    let invalids = validate(payload);
    if (invalids === 0) {
      dispatch(actions.register(payload));
    }
  };
  const handleKeyDown = (e)=>{
    if(e.key === 'Enter'){
      handleSumbit();
    }
  }

  return (
    <div className="bg-white w-[600px] mt-4 p-[30px] pb-[100px] rounded-md shadow-sm">
      <h3 className="font-semibold text-2xl mb-3">Đăng ký tài khoản</h3>
      <div className="w-full flex flex-col gap-3">
        <InputFrom
          type={"name"}
          setInvalidFeilds={setInvalidFeilds}
          invalidFeilds={invalidFeilds}
          label={"HỌ VÀ TÊN"}
          value={payload.name}
          setValue={setPayload}
          keyPayload={"name"}
          placeholder={'Ví dụ: Phan Thanh Thắng'}
          onKeyDown={handleKeyDown}
        />
        <InputFrom
          type={"phone"}
          setInvalidFeilds={setInvalidFeilds}
          invalidFeilds={invalidFeilds}
          label={"SỐ ĐIỆN THOẠI"}
          value={payload.phone}
          setValue={setPayload}
          keyPayload={"phone"}
          placeholder={'Ví dụ : 0967987730'}
          onKeyDown={handleKeyDown}
        />
        <InputFrom
          type={"password"}
          setInvalidFeilds={setInvalidFeilds}
          invalidFeilds={invalidFeilds}
          label={"MẬT KHẨU"}
          value={payload.password}
          setValue={setPayload}
          keyPayload={"password"}
          placeholder={"Ví dụ : thang@123"}
          onKeyDown={handleKeyDown}
        />
        <Button
          text="Đăng kí"
          bgColor="bg-secondary1"
          textColor="text-white"
          fullWidth
          className="justify-center font-semibold"
          onClick={handleSumbit}
        />
      </div>
      <div className="flex justify-between mt-7 text-base font-medium">
        <small>
          Bạn đã có tài khoản
          <Link
            to="/login"
            className="text-blue-500 hover:underline cursor-pointer"
          >
            Đăng nhập ngay
          </Link>
        </small>
      </div>
    </div>
  );
};

export default Register;
