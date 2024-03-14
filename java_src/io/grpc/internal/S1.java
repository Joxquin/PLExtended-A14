package io.grpc.internal;

import io.grpc.HttpConnectProxiedSocketAddress;
import io.grpc.ProxiedSocketAddress;
import java.lang.reflect.InvocationTargetException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class S1 implements X2.F0 {

    /* renamed from: d  reason: collision with root package name */
    public static final Logger f9986d = Logger.getLogger(S1.class.getName());

    /* renamed from: e  reason: collision with root package name */
    public static final Q1 f9987e = new Q1();

    /* renamed from: f  reason: collision with root package name */
    public static final Q1 f9988f = new Q1();

    /* renamed from: a  reason: collision with root package name */
    public final O2.q f9989a;

    /* renamed from: b  reason: collision with root package name */
    public final R1 f9990b;

    /* renamed from: c  reason: collision with root package name */
    public final InetSocketAddress f9991c;

    public S1() {
        String str = System.getenv("GRPC_PROXY_EXP");
        Q1 q12 = f9988f;
        q12.getClass();
        this.f9989a = q12;
        Q1 q13 = f9987e;
        q13.getClass();
        this.f9990b = q13;
        if (str == null) {
            this.f9991c = null;
            return;
        }
        String[] split = str.split(":", 2);
        int parseInt = split.length > 1 ? Integer.parseInt(split[1]) : 80;
        f9986d.warning("Detected GRPC_PROXY_EXP and will honor it, but this feature will be removed in a future release. Use the JVM flags \"-Dhttps.proxyHost=HOST -Dhttps.proxyPort=PORT\" to set the https proxy for this JVM.");
        this.f9991c = new InetSocketAddress(split[0], parseInt);
    }

    @Override // X2.F0
    public final ProxiedSocketAddress a(SocketAddress socketAddress) {
        String hostName;
        String hostName2;
        HttpConnectProxiedSocketAddress httpConnectProxiedSocketAddress;
        if (socketAddress instanceof InetSocketAddress) {
            InetSocketAddress inetSocketAddress = this.f9991c;
            if (inetSocketAddress != null) {
                int i4 = HttpConnectProxiedSocketAddress.f9663d;
                InetSocketAddress inetSocketAddress2 = (InetSocketAddress) socketAddress;
                O2.m.h(inetSocketAddress2, "targetAddress");
                return new HttpConnectProxiedSocketAddress(inetSocketAddress, inetSocketAddress2, null, null);
            }
            InetSocketAddress inetSocketAddress3 = (InetSocketAddress) socketAddress;
            Logger logger = f9986d;
            try {
                Logger logger2 = C1044r0.f10234a;
                try {
                    hostName = (String) InetSocketAddress.class.getMethod("getHostString", new Class[0]).invoke(inetSocketAddress3, new Object[0]);
                } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                    hostName = inetSocketAddress3.getHostName();
                }
                try {
                    URI uri = new URI("https", null, hostName, inetSocketAddress3.getPort(), null, null, null);
                    ProxySelector proxySelector = (ProxySelector) this.f9989a.get();
                    if (proxySelector == null) {
                        logger.log(Level.FINE, "proxy selector is null, so continuing without proxy lookup");
                        return null;
                    }
                    List<Proxy> select = proxySelector.select(uri);
                    if (select.size() > 1) {
                        logger.warning("More than 1 proxy detected, gRPC will select the first one");
                    }
                    Proxy proxy = select.get(0);
                    if (proxy.type() == Proxy.Type.DIRECT) {
                        return null;
                    }
                    InetSocketAddress inetSocketAddress4 = (InetSocketAddress) proxy.address();
                    try {
                        hostName2 = (String) InetSocketAddress.class.getMethod("getHostString", new Class[0]).invoke(inetSocketAddress4, new Object[0]);
                    } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
                        hostName2 = inetSocketAddress4.getHostName();
                    }
                    PasswordAuthentication a4 = this.f9990b.a(hostName2, inetSocketAddress4.getAddress(), inetSocketAddress4.getPort());
                    if (inetSocketAddress4.isUnresolved()) {
                        inetSocketAddress4 = new InetSocketAddress(InetAddress.getByName(inetSocketAddress4.getHostName()), inetSocketAddress4.getPort());
                    }
                    int i5 = HttpConnectProxiedSocketAddress.f9663d;
                    if (a4 == null) {
                        httpConnectProxiedSocketAddress = new HttpConnectProxiedSocketAddress(inetSocketAddress4, inetSocketAddress3, null, null);
                    } else {
                        httpConnectProxiedSocketAddress = new HttpConnectProxiedSocketAddress(inetSocketAddress4, inetSocketAddress3, a4.getUserName(), a4.getPassword() != null ? new String(a4.getPassword()) : null);
                    }
                    return httpConnectProxiedSocketAddress;
                } catch (URISyntaxException e4) {
                    logger.log(Level.WARNING, "Failed to construct URI for proxy lookup, proceeding without proxy", (Throwable) e4);
                    return null;
                }
            } catch (Throwable th) {
                logger.log(Level.WARNING, "Failed to get host for proxy lookup, proceeding without proxy", th);
                return null;
            }
        }
        return null;
    }
}
