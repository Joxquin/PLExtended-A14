package io.grpc.internal;

import java.net.Authenticator;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.PasswordAuthentication;
import java.net.ProxySelector;
import java.net.URL;
import java.util.logging.Level;
/* loaded from: classes.dex */
public final class Q1 implements R1, O2.q {
    @Override // io.grpc.internal.R1
    public PasswordAuthentication a(String str, InetAddress inetAddress, int i4) {
        URL url;
        try {
            url = new URL("https", str, i4, "");
        } catch (MalformedURLException unused) {
            S1.f9986d.log(Level.WARNING, String.format("failed to create URL for Authenticator: %s %s", "https", str));
            url = null;
        }
        return Authenticator.requestPasswordAuthentication(str, inetAddress, i4, "https", "", null, url, Authenticator.RequestorType.PROXY);
    }

    @Override // O2.q
    public Object get() {
        return ProxySelector.getDefault();
    }
}
