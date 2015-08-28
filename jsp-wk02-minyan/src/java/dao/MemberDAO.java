/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Member;
import java.util.ArrayList;

/**
 *
 * @author behminyan
 */
public class MemberDAO {
    private static ArrayList<Member> members;

    public MemberDAO(ArrayList<Member> members) {
               
    }

    public static ArrayList<Member> retrieveAll() {
        members = new ArrayList<>();
        members.add(new Member("Beh Min Yan",19,'F'));
        members.add(new Member("Lu Hsin Ning",19,'F'));
        members.add(new Member("Wang Xueran",19,'F'));
        members.add(new Member("Zhu Ruijie",19,'F'));
        members.add(new Member("Huang Xiping",19,'M'));  
        return members;
    }

    public void setMembers(ArrayList<Member> members) {
        this.members = members;
    }
    
}
