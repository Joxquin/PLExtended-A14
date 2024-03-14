package io.grpc;

import O2.i;
import O2.j;
import O2.k;
import O2.m;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class HttpConnectProxiedSocketAddress extends ProxiedSocketAddress {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f9663d = 0;
    private static final long serialVersionUID = 0;
    private final String password;
    private final SocketAddress proxyAddress;
    private final InetSocketAddress targetAddress;
    private final String username;

    public HttpConnectProxiedSocketAddress(SocketAddress socketAddress, InetSocketAddress inetSocketAddress, String str, String str2) {
        m.h(socketAddress, "proxyAddress");
        m.h(inetSocketAddress, "targetAddress");
        if (socketAddress instanceof InetSocketAddress) {
            m.l("The proxy address %s is not resolved", socketAddress, !((InetSocketAddress) socketAddress).isUnresolved());
        }
        this.proxyAddress = socketAddress;
        this.targetAddress = inetSocketAddress;
        this.username = str;
        this.password = str2;
    }

    public final InetSocketAddress a() {
        return this.targetAddress;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof HttpConnectProxiedSocketAddress) {
            HttpConnectProxiedSocketAddress httpConnectProxiedSocketAddress = (HttpConnectProxiedSocketAddress) obj;
            return k.a(this.proxyAddress, httpConnectProxiedSocketAddress.proxyAddress) && k.a(this.targetAddress, httpConnectProxiedSocketAddress.targetAddress) && k.a(this.username, httpConnectProxiedSocketAddress.username) && k.a(this.password, httpConnectProxiedSocketAddress.password);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.proxyAddress, this.targetAddress, this.username, this.password});
    }

    public final String toString() {
        i b4 = j.b(this);
        b4.a(this.proxyAddress, "proxyAddr");
        b4.a(this.targetAddress, "targetAddr");
        b4.a(this.username, "username");
        b4.c("hasPassword", this.password != null);
        return b4.toString();
    }
}
