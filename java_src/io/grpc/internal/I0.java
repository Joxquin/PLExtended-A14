package io.grpc.internal;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;
/* loaded from: classes.dex */
public final class I0 implements K0 {
    public static void a(NamingEnumeration namingEnumeration, NamingException namingException) {
        try {
            namingEnumeration.close();
        } catch (NamingException unused) {
        }
        throw namingException;
    }

    public static void b(DirContext dirContext, NamingException namingException) {
        try {
            dirContext.close();
        } catch (NamingException unused) {
        }
        throw namingException;
    }

    public final List c(String str) {
        Throwable th = L0.f9939a;
        if (th == null) {
            String[] strArr = {"TXT"};
            ArrayList arrayList = new ArrayList();
            Hashtable hashtable = new Hashtable();
            hashtable.put("com.sun.jndi.ldap.connect.timeout", "5000");
            hashtable.put("com.sun.jndi.ldap.read.timeout", "5000");
            InitialDirContext initialDirContext = new InitialDirContext(hashtable);
            try {
                NamingEnumeration all = initialDirContext.getAttributes(str, strArr).getAll();
                while (all.hasMore()) {
                    try {
                        NamingEnumeration all2 = ((Attribute) all.next()).getAll();
                        while (all2.hasMore()) {
                            try {
                                arrayList.add(String.valueOf(all2.next()));
                            } catch (NamingException e4) {
                                a(all2, e4);
                                throw null;
                            }
                        }
                        all2.close();
                    } catch (NamingException e5) {
                        a(all, e5);
                        throw null;
                    }
                }
                all.close();
                initialDirContext.close();
                return arrayList;
            } catch (NamingException e6) {
                b(initialDirContext, e6);
                throw null;
            }
        }
        throw new UnsupportedOperationException("JNDI is not currently available", th);
    }
}
