
package phonebook;
import java.io.*;

// класс Record, представляющий отдельную запись
// применяет имнтерфейс Serializable для поддержки сериализации
public class Record implements Serializable 
{
    private String name; // поле имени
    private String nomberphone; // поле для номера телефона
    private String email; // поле для электронного адреса
    private String adress; // поле для адреса
private String additionalinformation; // поле для доп инфо
    //метод возвращающий имя пользователя
    public String getName() {
        return name;
    }

    /**
     * метод, устанавливающий имя пользователя
     * @param name - устнавливаемое имя
     */
    public void setName(String name) {
        this.name = name;
    }

    public String getNomberphone() {
        return nomberphone;
    }

    public void setNomberphone(String dob) {
        this.nomberphone = dob;
    }

    // метод, возвращающий электронную почту пользователя
    public String getEmail() {
        return email;
    }

    // метод, устанавливающий элеметронную почту пользователя
    public void setEmail(String email) {
        this.email = email;
    }

    public String getAdress() {
        return adress;
    }
    public void setAdress(String group) {
        this.adress = adress;
    }
    public String getAdditionalinformation(){
        return additionalinformation;
    }
        public void setAdditionalinformation(String additionalinformation){
            this.additionalinformation = additionalinformation;
        }
    
    // мтод проверки эквивалентности записей
    public boolean equals(Record o)
    {
        // ели имя и фамилия совпадают. значит записи идентичны
        if(this.getName().equals(o.getName()) && this.getNomberphone().equals(o.getNomberphone()))
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}
