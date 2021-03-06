within TDL_v1.Transmission.Clutch;
model Clutch_Fault
  import SI = Modelica.SIunits;
  extends Fault.FaultTemplate(final FaultNumber = 3, DTCNumber = {1,2,3});

  parameter SI.Position parm_endstop_wearness=0.0005 annotation(enable=not useManualModel and not debugLocal);
  parameter Real parm_stiffness_gain_large=1 annotation(enable=not useManualModel and not debugLocal);
  parameter Real parm_stiffness_gain_small=1 annotation(enable=not useManualModel and not debugLocal);

  Modelica.Mechanics.Rotational.Interfaces.Flange_a Engine_Flange
    annotation (Placement(transformation(extent={{-110,-90},{-90,-70}})));
  Modelica.Mechanics.Rotational.Interfaces.Flange_b Transmission_Flange
    annotation (Placement(transformation(extent={{90,-90},{110,-70}})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J=0.01)
    annotation (Placement(transformation(extent={{-10,-50},{10,-30}})));
  Modelica.Mechanics.Translational.Interfaces.Flange_b Actuator_Flange
    annotation (Placement(transformation(extent={{90,70},{110,90}})));
  BasicComponents.Endstop.Rotational.Rotational_ElasticEndstop endstop(
    mode=2,
    gap_L=-0.0873,
    gap_R=0.1745,
    c=1e7,
    d=1e3,
    gap=0.5)                                                           annotation (Placement(
        transformation(
        extent={{10,-10},{-10,10}},
        rotation=180,
        origin={50,-70})));
  BasicComponents.Friction.Rotational.Rotational_ContinuousCoulombFriction
    rotational_ContinuousCoulombFriction(
    parm_mue=0.5,
    parm_cgeo=0.178,
    parm_w_limit=5e-3)
    annotation (Placement(transformation(extent={{-60,-50},{-40,-30}})));
  BasicComponents.SpringAndDamper.Rotational.Rotational_NonlinearSpringLinearDamper
    rotational_NonlinearSpringLinearDamper(
    d_NL=35,
    tableOnFile=false,
    table=[-0.1745,2000; 0.1745,2000])
    annotation (Placement(transformation(extent={{40,-50},{60,-30}})));
  Internal_Layer_Middle.Fault_DiaphragmSpring fault_DiaphragmSpring(tableOnFile_large_edge=true,
    tableOnFile_small_edge=true,
    tableName_large_edge="large_edge",
    fileName_large_edge="C:/Users/BWU1/Desktop/diaphragm_spring.mat",
    tableName_small_edge="small_edge",
    fileName_small_edge="C:/Users/BWU1/Desktop/diaphragm_spring.mat",
    parm_m_pressure_plate=10)
    annotation (Placement(transformation(extent={{-10,40},{10,60}})));
equation
  fault_DiaphragmSpring.fault[1]=if DTC[1].DTC_Active then parm_endstop_wearness else 0;
  fault_DiaphragmSpring.fault[2]=if DTC[2].DTC_Active then parm_stiffness_gain_large else 1;
  fault_DiaphragmSpring.fault[3]=if DTC[3].DTC_Active then parm_stiffness_gain_small else 1;

  connect(endstop.flange_a, inertia.flange_b) annotation (Line(
      points={{40,-70},{20,-70},{20,-40},{10,-40}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(endstop.flange_b, Transmission_Flange) annotation (Line(
      points={{60,-70},{80,-70},{80,-80},{100,-80}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(rotational_ContinuousCoulombFriction.flange_a, Engine_Flange)
    annotation (Line(
      points={{-60,-40},{-80,-40},{-80,-80},{-100,-80}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(rotational_ContinuousCoulombFriction.flange_b, inertia.flange_a)
    annotation (Line(
      points={{-40,-40},{-10,-40}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(rotational_NonlinearSpringLinearDamper.flange_a, inertia.flange_b)
    annotation (Line(
      points={{40,-40},{10,-40}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(rotational_NonlinearSpringLinearDamper.flange_b, Transmission_Flange)
    annotation (Line(
      points={{60,-40},{80,-40},{80,-80},{100,-80}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(fault_DiaphragmSpring.f_press, rotational_ContinuousCoulombFriction.f_input)
    annotation (Line(
      points={{0,40},{0,0},{-50,0},{-50,-30}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(fault_DiaphragmSpring.flange_a, Actuator_Flange) annotation (Line(
      points={{10,50},{60,50},{60,80},{100,80}},
      color={0,127,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics));
end Clutch_Fault;
