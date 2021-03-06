within TDL_v1.ElectricDrives.PMSMsystem.Elements;
model Inverter_withPWM
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(transformation(extent = {{-110,50},{-90,70}}), iconTransformation(extent = {{-110,50},{-90,70}})));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(transformation(extent = {{-110,-70},{-90,-50}}), iconTransformation(extent = {{-110,-70},{-90,-50}})));
  Modelica.Electrical.Analog.Interfaces.Pin pin annotation(Placement(transformation(extent = {{90,68},{110,88}}), iconTransformation(extent = {{90,68},{110,88}})));
  Modelica.Electrical.Analog.Interfaces.Pin pin1 annotation(Placement(transformation(extent = {{90,-10},{110,10}}), iconTransformation(extent = {{90,-10},{110,10}})));
  Modelica.Electrical.Analog.Interfaces.Pin pin2 annotation(Placement(transformation(extent = {{92,-90},{112,-70}}), iconTransformation(extent = {{92,-90},{112,-70}})));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealClosingSwitch annotation(Placement(transformation(extent = {{-10,-10},{10,10}}, rotation = 270, origin = {-68,28})));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealClosingSwitch1 annotation(Placement(transformation(extent = {{-10,-10},{10,10}}, rotation = 270, origin = {-68,-28})));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealClosingSwitch2 annotation(Placement(transformation(extent = {{-10,-10},{10,10}}, rotation = 270, origin = {-12,28})));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealClosingSwitch3 annotation(Placement(transformation(extent = {{-10,-10},{10,10}}, rotation = 270, origin = {-12,-28})));
  Modelica.Electrical.Analog.Semiconductors.Diode diode annotation(Placement(transformation(extent = {{-10,-10},{10,10}}, rotation = 90, origin = {-46,28})));
  Modelica.Electrical.Analog.Semiconductors.Diode diode1 annotation(Placement(transformation(extent = {{-10,-10},{10,10}}, rotation = 90, origin = {-44,-28})));
  Modelica.Electrical.Analog.Semiconductors.Diode diode2 annotation(Placement(transformation(extent = {{-10,-10},{10,10}}, rotation = 90, origin = {10,28})));
  Modelica.Electrical.Analog.Semiconductors.Diode diode3 annotation(Placement(transformation(extent = {{-10,-10},{10,10}}, rotation = 90, origin = {12,-28})));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealClosingSwitch6 annotation(Placement(transformation(extent = {{-10,-10},{10,10}}, rotation = 270, origin = {40,28})));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealClosingSwitch7 annotation(Placement(transformation(extent = {{-10,-10},{10,10}}, rotation = 270, origin = {40,-28})));
  Modelica.Electrical.Analog.Semiconductors.Diode diode4 annotation(Placement(transformation(extent = {{-10,-10},{10,10}}, rotation = 90, origin = {62,28})));
  Modelica.Electrical.Analog.Semiconductors.Diode diode5 annotation(Placement(transformation(extent = {{-10,-10},{10,10}}, rotation = 90, origin = {64,-28})));
  Modelica.Blocks.Math.RealToBoolean realToBoolean annotation(Placement(transformation(extent = {{-5,-5},{5,5}}, rotation = 270, origin = {-57,75})));
  Modelica.Blocks.Math.RealToBoolean realToBoolean1 annotation(Placement(transformation(extent = {{-5,-5},{5,5}}, rotation = 270, origin = {-1,75})));
  Modelica.Blocks.Math.RealToBoolean realToBoolean2 annotation(Placement(transformation(extent = {{-5,-5},{5,5}}, rotation = 270, origin = {51,75})));
  Modelica.Blocks.Math.RealToBoolean realToBoolean3 annotation(Placement(transformation(extent = {{-5,-5},{5,5}}, rotation = 90, origin = {-57,-75})));
  Modelica.Blocks.Math.RealToBoolean realToBoolean4 annotation(Placement(transformation(extent = {{-5,-5},{5,5}}, rotation = 90, origin = {-1,-75})));
  Modelica.Blocks.Math.RealToBoolean realToBoolean5 annotation(Placement(transformation(extent = {{-5,-5},{5,5}}, rotation = 90, origin = {51,-75})));
  Modelica.Blocks.Interfaces.RealInput u annotation(Placement(transformation(extent = {{-20,-20},{20,20}}, rotation = 270, origin = {-58,110})));
  Modelica.Blocks.Interfaces.RealInput u1 annotation(Placement(transformation(extent = {{-20,-20},{20,20}}, rotation = 270, origin = {-2,110})));
  Modelica.Blocks.Interfaces.RealInput u2 annotation(Placement(transformation(extent = {{-20,-20},{20,20}}, rotation = 270, origin = {52,110})));
  Modelica.Blocks.Interfaces.RealInput u3 annotation(Placement(transformation(extent = {{-20,-20},{20,20}}, rotation = 90, origin = {-58,-110})));
  Modelica.Blocks.Interfaces.RealInput u4 annotation(Placement(transformation(extent = {{-20,-20},{20,20}}, rotation = 90, origin = {0,-110})));
  Modelica.Blocks.Interfaces.RealInput u5 annotation(Placement(transformation(extent = {{-20,-20},{20,20}}, rotation = 90, origin = {52,-110})));
equation
  connect(pin1,pin1) annotation(Line(points = {{100,0},{100,0}}, color = {0,0,255}, smooth = Smooth.None));
  connect(diode.n,idealClosingSwitch.p) annotation(Line(points = {{-46,38},{-46,60},{-68,60},{-68,38}}, color = {0,0,255}, smooth = Smooth.None));
  connect(idealClosingSwitch2.p,idealClosingSwitch.p) annotation(Line(points = {{-12,38},{-12,60},{-68,60},{-68,38}}, color = {0,0,255}, smooth = Smooth.None));
  connect(diode2.n,idealClosingSwitch.p) annotation(Line(points = {{10,38},{10,60},{-68,60},{-68,38}}, color = {0,0,255}, smooth = Smooth.None));
  connect(idealClosingSwitch6.p,idealClosingSwitch.p) annotation(Line(points = {{40,38},{40,60},{-68,60},{-68,38}}, color = {0,0,255}, smooth = Smooth.None));
  connect(diode4.n,idealClosingSwitch.p) annotation(Line(points = {{62,38},{62,60},{-68,60},{-68,38}}, color = {0,0,255}, smooth = Smooth.None));
  connect(idealClosingSwitch.n,diode.p) annotation(Line(points = {{-68,18},{-46,18}}, color = {0,0,255}, smooth = Smooth.None));
  connect(idealClosingSwitch2.n,diode2.p) annotation(Line(points = {{-12,18},{10,18}}, color = {0,0,255}, smooth = Smooth.None));
  connect(idealClosingSwitch6.n,diode4.p) annotation(Line(points = {{40,18},{62,18}}, color = {0,0,255}, smooth = Smooth.None));
  connect(idealClosingSwitch1.p,diode1.n) annotation(Line(points = {{-68,-18},{-44,-18}}, color = {0,0,255}, smooth = Smooth.None));
  connect(idealClosingSwitch3.p,diode3.n) annotation(Line(points = {{-12,-18},{12,-18}}, color = {0,0,255}, smooth = Smooth.None));
  connect(idealClosingSwitch7.p,diode5.n) annotation(Line(points = {{40,-18},{64,-18}}, color = {0,0,255}, smooth = Smooth.None));
  connect(diode1.p,idealClosingSwitch1.n) annotation(Line(points = {{-44,-38},{-44,-60},{-68,-60},{-68,-38}}, color = {0,0,255}, smooth = Smooth.None));
  connect(idealClosingSwitch3.n,idealClosingSwitch1.n) annotation(Line(points = {{-12,-38},{-12,-60},{-68,-60},{-68,-38}}, color = {0,0,255}, smooth = Smooth.None));
  connect(diode3.p,idealClosingSwitch1.n) annotation(Line(points = {{12,-38},{12,-60},{-68,-60},{-68,-38}}, color = {0,0,255}, smooth = Smooth.None));
  connect(idealClosingSwitch7.n,idealClosingSwitch1.n) annotation(Line(points = {{40,-38},{40,-60},{-68,-60},{-68,-38}}, color = {0,0,255}, smooth = Smooth.None));
  connect(diode5.p,idealClosingSwitch1.n) annotation(Line(points = {{64,-38},{64,-60},{-68,-60},{-68,-38}}, color = {0,0,255}, smooth = Smooth.None));
  connect(idealClosingSwitch.n,idealClosingSwitch1.p) annotation(Line(points = {{-68,18},{-68,-18}}, color = {0,0,255}, smooth = Smooth.None));
  connect(idealClosingSwitch2.n,idealClosingSwitch3.p) annotation(Line(points = {{-12,18},{-12,-18}}, color = {0,0,255}, smooth = Smooth.None));
  connect(idealClosingSwitch6.n,diode5.n) annotation(Line(points = {{40,18},{40,-18},{64,-18}}, color = {0,0,255}, smooth = Smooth.None));
  connect(realToBoolean.y,idealClosingSwitch.control) annotation(Line(points = {{-57,69.5},{-57,28},{-61,28}}, color = {255,0,255}, smooth = Smooth.None));
  connect(realToBoolean1.y,idealClosingSwitch2.control) annotation(Line(points = {{-1,69.5},{-1,28},{-5,28}}, color = {255,0,255}, smooth = Smooth.None));
  connect(realToBoolean2.y,idealClosingSwitch6.control) annotation(Line(points = {{51,69.5},{51,28},{47,28}}, color = {255,0,255}, smooth = Smooth.None));
  connect(realToBoolean3.y,idealClosingSwitch1.control) annotation(Line(points = {{-57,-69.5},{-57,-28},{-61,-28}}, color = {255,0,255}, smooth = Smooth.None));
  connect(realToBoolean4.y,idealClosingSwitch3.control) annotation(Line(points = {{-1,-69.5},{-1,-28},{-5,-28}}, color = {255,0,255}, smooth = Smooth.None));
  connect(realToBoolean5.y,idealClosingSwitch7.control) annotation(Line(points = {{51,-69.5},{51,-28},{47,-28}}, color = {255,0,255}, smooth = Smooth.None));
  connect(u,realToBoolean.u) annotation(Line(points = {{-58,110},{-58,81},{-57,81}}, color = {0,0,127}, smooth = Smooth.None));
  connect(u1,realToBoolean1.u) annotation(Line(points = {{-2,110},{-2,81},{-1,81}}, color = {0,0,127}, smooth = Smooth.None));
  connect(u2,realToBoolean2.u) annotation(Line(points = {{52,110},{52,81},{51,81}}, color = {0,0,127}, smooth = Smooth.None));
  connect(realToBoolean3.u,u3) annotation(Line(points = {{-57,-81},{-57,-91.5},{-58,-91.5},{-58,-110}}, color = {0,0,127}, smooth = Smooth.None));
  connect(u4,realToBoolean4.u) annotation(Line(points = {{0,-110},{0,-96},{0,-81},{-1,-81}}, color = {0,0,127}, smooth = Smooth.None));
  connect(u5,realToBoolean5.u) annotation(Line(points = {{52,-110},{52,-96},{52,-81},{51,-81}}, color = {0,0,127}, smooth = Smooth.None));
  connect(pin,idealClosingSwitch1.p) annotation(Line(points = {{100,78},{88,78},{88,48},{-32,48},{-32,8},{-68,8},{-68,-18}}, color = {0,0,255}, smooth = Smooth.None));
  connect(pin1,idealClosingSwitch3.p) annotation(Line(points = {{100,0},{-12,0},{-12,-18}}, color = {0,0,255}, smooth = Smooth.None));
  connect(pin2,diode5.n) annotation(Line(points = {{102,-80},{80,-80},{80,-8},{40,-8},{40,-18},{64,-18}}, color = {0,0,255}, smooth = Smooth.None));
  connect(pin_p,idealClosingSwitch.p) annotation(Line(points = {{-100,60},{-68,60},{-68,38}}, color = {0,0,255}, smooth = Smooth.None));
  connect(pin_n,idealClosingSwitch1.n) annotation(Line(points = {{-100,-60},{-68,-60},{-68,-38}}, color = {0,0,255}, smooth = Smooth.None));
  annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100,-100},{100,100}}), graphics={  Rectangle(extent=  {{-100,100},{100,-100}}, lineColor=  {0,0,255}),Text(extent=  {{-76,52},{72,-36}}, lineColor=  {0,0,255}, textString=  "PWMinverter")}), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100,-100},{100,100}}), graphics));
end Inverter_withPWM;
