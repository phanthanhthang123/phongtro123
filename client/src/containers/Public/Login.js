import React, { useEffect, useState } from "react";
import { InputFrom, Button } from "../../components";
import { Link, useNavigate } from "react-router-dom";
import * as actions from "../../store/actions";
import { useDispatch, useSelector } from "react-redux";
import Swal from 'sweetalert2';

const Login = () => {
  const dispatch = useDispatch();
  const navigate = useNavigate();
  
  const { isLoggedIn, msg,update } = useSelector((state) => state.auth);
  useEffect(() => {
    isLoggedIn && navigate("/");
  }, [isLoggedIn]);
  
  useEffect(()=>{
    msg && Swal.fire("Opps !",msg,'error');
  },[msg, update]);


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
    // console.log(payload);
    // const response = await apiRegister(payload);
    // console.log(response);
    let invalids = validate(payload);
    if (invalids === 0) {
      dispatch(actions.login(payload));
    }
  };

  const [payload, setPayload] = useState({
    phone: "",
    password: "",
  });

  return (
    <div className="bg-white w-[600px] mt-4 p-[30px] pb-[100px] rounded-md shadow-sm">
      <h3 className="font-semibold text-2xl mb-3">Đăng nhập</h3>
      <div className="w-full flex flex-col gap-3">
        <InputFrom
          invalidFeilds={invalidFeilds}
          setInvalidFeilds={setInvalidFeilds}
          label={"SỐ ĐIỆN THOẠI"}
          value={payload.phone}
          setValue={setPayload}
          keyPayload={"phone"}  
          placeholder={"Ví dụ : 0967987730"}
        />
        <InputFrom
          invalidFeilds={invalidFeilds}
          setInvalidFeilds={setInvalidFeilds}
          label={"MẬT KHẨU"}
          value={payload.password}
          setValue={setPayload}
          type={"password"}
          keyPayload={"password"}
          placeholder={"Ví dụ : thang@123"}
        />
        <Button
          text="Đăng nhập"
          bgColor="bg-secondary1"
          textColor="text-white"
          fullWidth
          className="justify-center font-semibold"
          onClick={handleSumbit}
        />
      </div>
      <div className="flex justify-between mt-7 text-base font-medium">
        <small className="text-[blue] hover:text-[orange] cursor-pointer">
          Bạn quên mật khẩu
        </small>
        <Link
          to="/register"
          className="text-[blue] hover:text-[orange] cursor-pointer"
        >
          Tạo tài khoản mới
        </Link>
      </div>
    </div>
  );
};

export default Login;
