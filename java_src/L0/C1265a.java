package l0;

import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.os.LocaleList;
import w0.f;
/* renamed from: l0.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1265a extends Paint {
    public C1265a(PorterDuff.Mode mode) {
        setXfermode(new PorterDuffXfermode(mode));
    }

    @Override // android.graphics.Paint
    public final void setAlpha(int i4) {
        PointF pointF = f.f12733a;
        super.setAlpha(Math.max(0, Math.min(255, i4)));
    }

    @Override // android.graphics.Paint
    public final void setTextLocales(LocaleList localeList) {
    }

    public C1265a(PorterDuff.Mode mode, int i4) {
        super(1);
        setXfermode(new PorterDuffXfermode(mode));
    }
}
