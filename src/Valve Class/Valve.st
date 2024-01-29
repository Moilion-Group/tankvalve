NAMESPACE TankValvelib
    ///枚举定义，在类外定义
    TYPE
        ValveState : (Opened, Closed, Undefined, Error) := Closed;
    END_TYPE
    ///阀门类
    CLASS PUBLIC Valve IMPLEMENTS IValve
        ///属性
        VAR
         _valveState:BOOL; 
           
        END_VAR
        ///方法-打开
        METHOD PUBLIC Open 
            _valveState:=TRUE;
        END_METHOD
        ///方法-关闭
        METHOD PUBLIC Close 
            _valveState:=FALSE;
            ;
        END_METHOD
        ///方法-获取状态
        METHOD PUBLIC GetState : ValveState
            IF _valveState THEN
                GetState:=ValveState#Opened;
            ELSE
                GetState:=ValveState#Closed;
            END_IF;
            ;
        END_METHOD
        ///循环写Q区
        METHOD PUBLIC WriteCyclic 
            VAR_OUTPUT
                valveState:BOOL;
            END_VAR
            valveState:=_valveState;
            ;
        END_METHOD

    END_CLASS

END_NAMESPACE