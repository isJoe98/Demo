package com.cqssc.ncp.entity;




import javax.persistence.*;
import java.util.List;

@Entity
public class Role {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String roleName;
    @ManyToOne(fetch = FetchType.EAGER)
    private Frmuser Frmuser;
    @OneToMany(cascade = CascadeType.ALL,mappedBy = "Role")
    private List<Permission> permissions;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public Frmuser getUser() {
        return Frmuser;
    }

    public void setUser(Frmuser user) {
        this.Frmuser = user;
    }

    public List<Permission> getPermissions() {
        return permissions;
    }

    public void setPermissions(List<Permission> permissions) {
        this.permissions = permissions;
    }
}