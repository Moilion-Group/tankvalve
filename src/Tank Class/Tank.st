NAMESPACE TankValveLib
   CLASS PUBLIC Tank
    VAR
     _vin:IValve;
     _vout:IValve;
        
    END_VAR

    METHOD PUBLIC Init 
        VAR_INPUT
         vin:IValve;
         vout:IValve;   
        END_VAR
        _vin:=vin;
        _vout:=vout;
        ;
    END_METHOD

    METHOD PUBLIC Filling 
        _vin.Open();
        _vout.Close();
    END_METHOD

    METHOD PUBLIC Feeding 
        _vin.Close();
        _vout.Open();
    END_METHOD

    METHOD PUBLIC  Flushing
        _vin.Open();
        _vout.Open();
    END_METHOD
    
    METHOD PUBLIC Close
        _vin.Close();
        _vout.Close();
    END_METHOD
   END_CLASS
END_NAMESPACE