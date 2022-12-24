/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import dto.Client;
import java.util.List;

/**
 *
 * @author darkan
 */
public interface IClient {

    public List listAll(String datos);

    public Client listById(int id);

    public boolean add(Client client);

    public boolean update(Client client);

    public boolean delete(int id);

}
