/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ClassModel;

/**
 *
 * @author Acer
 */
public class TipoDocumento {
     String  documento;

    public String getDocumento() {
        return documento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }

    public TipoDocumento() {
    }

    public TipoDocumento(String documento) {
        this.documento = documento;
    }

    @Override
    public String toString() {
        return "documento=" + documento;
    }
  
  
}
