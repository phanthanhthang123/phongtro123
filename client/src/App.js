import { Routes, Route } from "react-router-dom";
import { Home, Login, Register,RentalApartment,RentalHouse,RentalRoom,RentalSpace,Homepage,DetailPost } from "./containers/Public";
import { path } from "./ultils/constant";


function App() {
  return (
    <div className=" bg-primary ">
      <Routes>
        <Route path={path.HOME} element={<Home />}>
          <Route path={'/'} element={<Homepage/>}/>
          <Route path={path.HOME__PAGE} element={<Homepage/>}/>
          <Route path={path.LOGIN} element={<Login />} />
          <Route path={path.REGISTER} element={<Register />} />
          <Route path={path.CHO_THUE_CAN_HO} element={<RentalApartment/>}/>
          <Route path={path.CHO_THUE_MAT_BANG} element={<RentalSpace/>}/>
          <Route path={path.CHO_THUE_PHONG_TRO} element={<RentalRoom/>}/>
          <Route path={path.NHA_CHO_THUE} element={<RentalHouse/>}/>
          <Route path={path.DETAIL_POST__TITLE__POSTID} element={<DetailPost/>}/>
          <Route path={'chi-tiet/*'} element={<DetailPost/>}/>
        </Route>
      </Routes>
    </div>
  );
}

export default App;
