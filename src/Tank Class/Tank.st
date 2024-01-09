NAMESPACE TankLib

    CLASS Tank
        VAR PRIVATE
            //内聚阀门接口，实现罐与阀门的松耦合
            _inValve:IValve;
            _outValve:IValve;
        END_VAR

        //接口初始化
        METHOD PUBLIC Init 
            VAR_INPUT
                inValve:IValve;
                outValve:IValve;
            END_VAR
            _inValve:=inValve;
            _outValve:=outValve;
            ;
        END_METHOD
        //装罐

        METHOD PUBLIC Filling
            _inValve.Open();
            _outValve.Close();
        END_METHOD
        //罐清洗

        METHOD PUBLIC Flushing 
            _inValve.Open();
            _outValve.Open();
        END_METHOD
        //出料

        METHOD PUBLIC Feeding
            _inValve.Close();
            _outValve.Open();
        END_METHOD
        //关闭
        
        METHOD PUBLIC Close 
            _inValve.Close();
            _outValve.Close();
        END_METHOD
    END_CLASS
    
END_NAMESPACE