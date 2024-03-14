package w1;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.h;
import x1.InterfaceC1459c;
/* renamed from: w1.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1452d implements InterfaceC1459c {

    /* renamed from: d  reason: collision with root package name */
    public final DisplayManager f12744d;

    /* renamed from: e  reason: collision with root package name */
    public final Context f12745e;

    /* renamed from: f  reason: collision with root package name */
    public final Handler f12746f;

    /* renamed from: g  reason: collision with root package name */
    public final List f12747g;

    /* renamed from: h  reason: collision with root package name */
    public final C1449a f12748h;

    /* renamed from: i  reason: collision with root package name */
    public Integer f12749i;

    public C1452d(DisplayManager displayManager, Context context, Handler mainHandler) {
        h.e(displayManager, "displayManager");
        h.e(context, "context");
        h.e(mainHandler, "mainHandler");
        this.f12744d = displayManager;
        this.f12745e = context;
        this.f12746f = mainHandler;
        this.f12747g = new ArrayList();
        this.f12748h = new C1449a(this);
    }
}
