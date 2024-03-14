package k0;

import com.airbnb.lottie.LottieAnimationView;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import javax.net.ssl.SSLException;
import w0.C1446c;
/* renamed from: k0.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C1192g implements InterfaceC1180E {
    @Override // k0.InterfaceC1180E
    public final void a(Object obj) {
        Throwable th = (Throwable) obj;
        C1192g c1192g = LottieAnimationView.f4275u;
        w0.g gVar = w0.h.f12735a;
        if (!((th instanceof SocketException) || (th instanceof ClosedChannelException) || (th instanceof InterruptedIOException) || (th instanceof ProtocolException) || (th instanceof SSLException) || (th instanceof UnknownHostException) || (th instanceof UnknownServiceException))) {
            throw new IllegalStateException("Unable to parse composition", th);
        }
        C1446c.c("Unable to load composition.", th);
    }
}
