package io.grpc.internal;

import X2.AbstractC0119i;
import io.grpc.ChannelLogger$ChannelLogLevel;
import java.text.MessageFormat;
import java.util.logging.Level;
/* loaded from: classes.dex */
public final class G0 extends AbstractC0119i {

    /* renamed from: a  reason: collision with root package name */
    public X2.Q f9882a;

    @Override // X2.AbstractC0119i
    public final void a(ChannelLogger$ChannelLogLevel channelLogger$ChannelLogLevel, String str) {
        ChannelLogger$ChannelLogLevel channelLogger$ChannelLogLevel2 = ChannelLogger$ChannelLogLevel.INFO;
        X2.Q q4 = this.f9882a;
        Level c4 = C1025l.c(channelLogger$ChannelLogLevel2);
        if (C1029m.f10171d.isLoggable(c4)) {
            C1029m.a(q4, c4, str);
        }
    }

    @Override // X2.AbstractC0119i
    public final void b(ChannelLogger$ChannelLogLevel channelLogger$ChannelLogLevel, String str, Object... objArr) {
        X2.Q q4 = this.f9882a;
        Level c4 = C1025l.c(channelLogger$ChannelLogLevel);
        if (C1029m.f10171d.isLoggable(c4)) {
            C1029m.a(q4, c4, MessageFormat.format(str, objArr));
        }
    }
}
