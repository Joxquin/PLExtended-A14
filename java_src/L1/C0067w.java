package L1;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.RectF;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import com.android.launcher3.logging.StatsLogManager;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* renamed from: L1.w  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0067w {

    /* renamed from: y  reason: collision with root package name */
    public static final Interpolator f1265y = new PathInterpolator(0.33f, 0.0f, 0.05f, 1.0f);

    /* renamed from: z  reason: collision with root package name */
    public static final U.a f1266z = new U.a();

    /* renamed from: a  reason: collision with root package name */
    public final X1.u f1267a;

    /* renamed from: b  reason: collision with root package name */
    public final ViewGroup f1268b;

    /* renamed from: c  reason: collision with root package name */
    public final C0046a0 f1269c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1270d;

    /* renamed from: e  reason: collision with root package name */
    public final int f1271e;

    /* renamed from: f  reason: collision with root package name */
    public final String f1272f;

    /* renamed from: h  reason: collision with root package name */
    public final K1.a f1274h;

    /* renamed from: i  reason: collision with root package name */
    public final com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b f1275i;

    /* renamed from: j  reason: collision with root package name */
    public final V1.u f1276j;

    /* renamed from: k  reason: collision with root package name */
    public X1.s f1277k;

    /* renamed from: m  reason: collision with root package name */
    public float f1279m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f1280n;

    /* renamed from: o  reason: collision with root package name */
    public X1.f f1281o;

    /* renamed from: q  reason: collision with root package name */
    public ImageView f1283q;

    /* renamed from: r  reason: collision with root package name */
    public C0059n f1284r;

    /* renamed from: s  reason: collision with root package name */
    public A0 f1285s;

    /* renamed from: t  reason: collision with root package name */
    public int f1286t;

    /* renamed from: u  reason: collision with root package name */
    public int f1287u;

    /* renamed from: v  reason: collision with root package name */
    public int f1288v;

    /* renamed from: w  reason: collision with root package name */
    public int f1289w;

    /* renamed from: x  reason: collision with root package name */
    public FrameLayout f1290x;

    /* renamed from: g  reason: collision with root package name */
    public final SparseArray f1273g = new SparseArray();

    /* renamed from: l  reason: collision with root package name */
    public final List f1278l = new ArrayList();

    /* renamed from: p  reason: collision with root package name */
    public boolean f1282p = false;

    public C0067w(com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar, ViewGroup viewGroup, X1.u uVar, C0046a0 c0046a0, K1.a aVar, V1.u uVar2) {
        this.f1275i = bVar;
        this.f1268b = viewGroup;
        this.f1267a = uVar;
        this.f1269c = c0046a0;
        Resources resources = viewGroup.getResources();
        this.f1270d = resources.getDimensionPixelSize(R.dimen.selection_padding);
        this.f1271e = resources.getDimensionPixelSize(R.dimen.selection_padding);
        this.f1272f = resources.getString(R.string.image_content_description);
        this.f1274h = aVar;
        this.f1276j = uVar2;
    }

    public final void a() {
        if (this.f1280n) {
            b(true);
            C0059n c0059n = this.f1284r;
            if (c0059n != null) {
                c0059n.animate().alpha(0.0f).setInterpolator(f1266z).setDuration(333L).withEndAction(new RunnableC0065u(this, 0));
            }
            FrameLayout frameLayout = this.f1290x;
            if (frameLayout != null) {
                frameLayout.setVisibility(0);
            }
            A0 a02 = this.f1285s;
            if (a02 != null) {
                a02.b(false);
            }
            X1.t tVar = this.f1277k.f2062a;
            tVar.f2063a.f();
            tVar.f2064b.o(false);
        }
    }

    public final void b(boolean z4) {
        ImageView imageView = this.f1283q;
        if (imageView != null) {
            if (z4) {
                imageView.animate().scaleX(1.0f).scaleY(1.0f).setInterpolator(f1266z).setDuration(333L).withEndAction(new RunnableC0065u(this, 1));
            } else {
                c();
            }
        }
    }

    public final void c() {
        this.f1268b.removeView(this.f1283q);
        this.f1283q = null;
        this.f1282p = false;
        ((View) X1.u.g(this.f1277k.f2062a.f2064b).getParent()).setTranslationZ(0.0f);
    }

    public final void d(RectF rectF) {
        M1.b.f("Show single image indicators");
        ViewGroup viewGroup = this.f1268b;
        int dimension = (int) viewGroup.getResources().getDimension(R.dimen.indicator_size);
        float dimensionPixelSize = viewGroup.getResources().getDimensionPixelSize(R.dimen.indicator_margin);
        float f4 = rectF.left + dimensionPixelSize;
        float f5 = dimension;
        float f6 = (rectF.bottom - f5) - dimensionPixelSize;
        if (f4 < 0.0f || f6 < 0.0f || f4 + f5 > this.f1288v || f5 + f6 > this.f1289w) {
            M1.b.d(String.format(Locale.getDefault(), "Indicator rect %s is outside taskview %dx%d", rectF, Integer.valueOf(this.f1288v), Integer.valueOf(this.f1289w)), null);
            return;
        }
        this.f1276j.f1860a.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_OVERVIEW_SHARING_SHOW_IMAGE_INDICATOR);
        Context context = viewGroup.getContext();
        ImageButton imageButton = new ImageButton(context);
        imageButton.setImageResource(R.drawable.image_indicator);
        imageButton.setBackgroundResource(R.drawable.indicator_background);
        imageButton.setImageTintList(ColorStateList.valueOf(this.f1287u));
        imageButton.setBackgroundTintList(ColorStateList.valueOf(this.f1286t));
        imageButton.setContentDescription(context.getString(R.string.image_content_description));
        imageButton.setLayoutParams(new FrameLayout.LayoutParams(dimension, dimension));
        imageButton.setY(f6);
        imageButton.setX(f4);
        if (this.f1290x == null) {
            FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
            this.f1290x = frameLayout;
            viewGroup.addView(frameLayout);
        }
        this.f1290x.addView(imageButton);
        imageButton.setOnClickListener(new View$OnClickListenerC0066v(this, rectF));
        imageButton.setAlpha(0.0f);
        imageButton.animate().alpha(1.0f).setDuration(133L);
    }

    public final boolean e(RectF rectF, float f4, float f5) {
        return (rectF.height() == 0.0f || rectF.width() == 0.0f || this.f1289w == 0 || this.f1288v == 0 || rectF.width() / ((float) this.f1288v) <= f4 || rectF.height() / ((float) this.f1289w) <= f5) ? false : true;
    }
}
