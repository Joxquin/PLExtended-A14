package L1;

import android.animation.ObjectAnimator;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
/* loaded from: classes.dex */
public final class H extends FrameLayout {

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ int f1082f = 0;

    /* renamed from: d  reason: collision with root package name */
    public float f1083d;

    /* renamed from: e  reason: collision with root package name */
    public float f1084e;

    public H(Context context) {
        super(context, null, 0, 0);
        setImportantForAccessibility(2);
    }

    public static void a(H h4, View view, Bitmap bitmap, C0067w c0067w, float f4, float f5) {
        h4.getClass();
        ImageView imageView = c0067w.f1283q;
        G g4 = new G(bitmap, view, imageView != null ? imageView.getScaleX() : 1.0f, f4, f5);
        view.startDrag(new ClipData(new ClipDescription("dragToShareImage", new String[]{"text/plain"}), new ClipData.Item("image")), g4, null, 512);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(g4, G.f1071k, 1.0f);
        ofFloat.setInterpolator(new U.b());
        ofFloat.setAutoCancel(true);
        ofFloat.start();
        c0067w.b(false);
    }
}
