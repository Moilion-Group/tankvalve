NAMESPACE TankValveLib
    
    ///常闭阀门类，实现阀门接口
    CLASS PUBLIC AlwaysOFFValve IMPLEMENTS IValve
        ///私有内部变量存储阀门状态
        VAR 
        _valveState:BOOL;
        END_VAR

        ///打开，触电断开
        METHOD PUBLIC Open 
            _valveState := FALSE;
        END_METHOD

        ///关闭，触电吸合
        METHOD PUBLIC Close
            _valveState:=TRUE;
        END_METHOD
        
        ///获取阀门状态，返回枚举值
        METHOD PUBLIC GetState:ValveState
            if(_valveState) Then
                GetState:=ValveState#Closed;
            ELSE
                GetState:=ValveState#Opened;
            END_IF;
        END_METHOD
        
        ///输出Q区
        METHOD PUBLIC WriteCyclic 
            VAR_OUTPUT
                outPutSignal:BOOL;
            END_VAR
            outPutSignal:=_valveState;
        END_METHOD
    END_CLASS

END_NAMESPACE
