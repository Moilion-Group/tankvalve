NAMESPACE TankLib
TYPE
    ValveState:(Opened,Closed,Error,Undefined):=Undefined;
END_TYPE
    //实现阀门接口
    CLASS PUBLIC Valve IMPLEMENTS IValve
        VAR PRIVATE
        _valveState:BOOL;
        END_VAR

        //打开
        METHOD PUBLIC Open
            _valveState := TRUE;
        END_METHOD

        //关闭
        METHOD PUBLIC Close
            _valveState:=FALSE;
        END_METHOD

        //获取状态
        METHOD PUBLIC GetState:ValveState
            if(_valveState) Then
                GetState:=ValveState#Opened;
            ELSE
                GetState:=ValveState#Closed;
            END_IF;
        END_METHOD
        
        //输出信号
        METHOD Public WriteCyclic
            VAR_OUTPUT
                outPutSignal:BOOL;
            END_VAR
            outPutSignal:=_valveState;
        END_METHOD
    END_CLASS

END_NAMESPACE
