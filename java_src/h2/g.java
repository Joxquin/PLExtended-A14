package h2;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.Window;
import android.view.WindowManager;
import com.google.android.libraries.launcherclient.ILauncherOverlayCallback$Stub;
/* loaded from: classes.dex */
public final class g extends ILauncherOverlayCallback$Stub implements Handler.Callback {

    /* renamed from: e  reason: collision with root package name */
    public h f9505e;

    /* renamed from: f  reason: collision with root package name */
    public WindowManager f9506f;

    /* renamed from: g  reason: collision with root package name */
    public int f9507g;

    /* renamed from: h  reason: collision with root package name */
    public Window f9508h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f9509i = false;

    /* renamed from: d  reason: collision with root package name */
    public final Handler f9504d = new Handler(Looper.getMainLooper(), this);

    public final void a(h hVar) {
        this.f9505e = hVar;
        this.f9506f = hVar.f9511a.getWindowManager();
        Point point = new Point();
        Activity activity = hVar.f9511a;
        activity.getDisplay().getRealSize(point);
        this.f9507g = -Math.max(point.x, point.y);
        this.f9508h = activity.getWindow();
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        h hVar = this.f9505e;
        if (hVar == null) {
            return true;
        }
        int i4 = message.what;
        if (i4 == 2) {
            if ((hVar.f9522l & 1) != 0) {
                float floatValue = ((Float) message.obj).floatValue();
                this.f9505e.f9512b.onOverlayScrollChanged(floatValue);
                if (floatValue <= 0.0f) {
                    this.f9505e.f9515e.a("onScroll 0, overlay closed");
                } else if (floatValue >= 1.0f) {
                    this.f9505e.f9515e.a("onScroll 1, overlay opened");
                } else {
                    this.f9505e.f9515e.c("onScroll", 1, floatValue);
                }
            }
            return true;
        } else if (i4 == 3) {
            WindowManager.LayoutParams attributes = this.f9508h.getAttributes();
            if (((Boolean) message.obj).booleanValue()) {
                attributes.x = this.f9507g;
                attributes.flags |= 512;
            } else {
                attributes.x = 0;
                attributes.flags &= -513;
            }
            this.f9506f.updateViewLayout(this.f9508h.getDecorView(), attributes);
            return true;
        } else if (i4 != 5) {
            return false;
        } else {
            Bundle bundle = (Bundle) message.obj;
            hVar.f9515e.b("stateChanged", message.arg1);
            h hVar2 = this.f9505e;
            i iVar = hVar2.f9512b;
            if (iVar instanceof k) {
                k kVar = (k) iVar;
                if (bundle.containsKey("minus_one_thumbnail_image_960_540") && bundle.containsKey("minus_one_product_name")) {
                    Icon icon = (Icon) bundle.getParcelable("minus_one_thumbnail_image_960_540");
                    bundle.getString("minus_one_product_name");
                    kVar.a();
                }
                if (bundle.getBoolean("overlay_animation_complete")) {
                    kVar.j();
                }
                if (((Bitmap) bundle.getParcelable("google_overlay_icon")) != null) {
                    kVar.i();
                }
                if (bundle.getBoolean("initiate_overlay_switch")) {
                    kVar.m();
                }
            }
            int i5 = bundle.getInt("service_status", -1);
            if (i5 != -1) {
                hVar2.c(i5);
            }
            if (iVar instanceof j) {
                ((j) iVar).b(i5);
            }
            return true;
        }
    }
}
