NAMESPACE TankLib
   /* 继承Valve-实现IValve */
    CLASS PUBLIC ValveWithSensor EXTENDS Valve
        VAR PRIVATE
        _closeSensor:BOOL;
        END_VAR
        //扩展方法：读取传感器反馈信号
        METHOD PUBLIC ReadSensor
            VAR_INPUT
                closeSensor : BOOL;
            END_VAR        
            _closeSensor := closeSensor;
        END_METHOD
        
        //重写方法：修改父类Valve的获取状态
        METHOD PUBLIC OVERRIDE GetState : ValveState
            IF (_closeSensor) THEN 
                GetState := ValveState#Closed;
            ELSE
                GetState := ValveState#Opened;
            END_IF;
        END_METHOD

    END_CLASS

END_NAMESPACE