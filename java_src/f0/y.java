package f0;

import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.util.Log;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.graphics.drawable.IconCompat;
import androidx.slice.SliceItem;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.allapps.SearchResultIconSlice;
import java.util.Set;
/* loaded from: classes.dex */
public final class y extends F {

    /* renamed from: p  reason: collision with root package name */
    public C0843j f9296p;

    /* renamed from: q  reason: collision with root package name */
    public SliceItem f9297q;

    /* renamed from: r  reason: collision with root package name */
    public IconCompat f9298r;

    /* renamed from: s  reason: collision with root package name */
    public Set f9299s;

    /* renamed from: t  reason: collision with root package name */
    public final int f9300t;

    /* renamed from: u  reason: collision with root package name */
    public final int f9301u;

    public y(Context context) {
        super(context);
        Resources resources = getResources();
        this.f9301u = resources.getDimensionPixelSize(R.dimen.abc_slice_icon_size);
        this.f9300t = resources.getDimensionPixelSize(R.dimen.abc_slice_shortcut_size);
    }

    @Override // f0.F
    public final Set a() {
        return this.f9299s;
    }

    @Override // f0.F
    public final void c() {
        this.f9296p = null;
        this.f9297q = null;
        this.f9298r = null;
        setBackground(null);
        removeAllViews();
    }

    @Override // f0.F
    public final void h(Set set) {
        this.f9299s = set;
    }

    @Override // f0.F
    public final void m(C0843j c0843j) {
        c();
        this.f9296p = c0843j;
        if (c0843j == null) {
            return;
        }
        androidx.slice.core.a aVar = (androidx.slice.core.a) c0843j.e(getContext());
        this.f9297q = aVar.f4081a;
        this.f9298r = aVar.f4082b;
        boolean z4 = aVar.f4083c == 0;
        SliceItem sliceItem = this.f9296p.f9086b;
        int d4 = sliceItem != null ? sliceItem.d() : -1;
        if (d4 == -1) {
            d4 = P.b(16843829, getContext());
        }
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        shapeDrawable.setTint(d4);
        ImageView imageView = new ImageView(getContext());
        if (this.f9298r != null && z4) {
            imageView.setBackground(shapeDrawable);
        }
        addView(imageView);
        if (this.f9298r != null) {
            int i4 = z4 ? this.f9301u : this.f9300t;
            Context context = getContext();
            IconCompat iconCompat = this.f9298r;
            boolean z5 = !z4;
            ImageView imageView2 = new ImageView(context);
            imageView2.setImageDrawable(iconCompat.h(context));
            imageView2.setScaleType(z5 ? ImageView.ScaleType.CENTER_CROP : ImageView.ScaleType.CENTER_INSIDE);
            addView(imageView2);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) imageView2.getLayoutParams();
            if (z5) {
                Bitmap createBitmap = Bitmap.createBitmap(i4, i4, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                imageView2.layout(0, 0, i4, i4);
                imageView2.draw(canvas);
                imageView2.setImageBitmap(P.a(createBitmap));
            } else {
                imageView2.setColorFilter(-1);
            }
            layoutParams.width = i4;
            layoutParams.height = i4;
            layoutParams.gravity = 17;
            setClickable(true);
        } else {
            setClickable(false);
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams2.gravity = 17;
        setLayoutParams(layoutParams2);
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (this.f9296p == null) {
            return false;
        }
        if (!callOnClick()) {
            try {
                SliceItem sliceItem = this.f9297q;
                if (sliceItem != null) {
                    sliceItem.a(null, null);
                    M m4 = this.f9073d;
                    if (m4 != null) {
                        C0836c c0836c = new C0836c(3, 1, -1, 0);
                        SliceItem sliceItem2 = this.f9297q;
                        if (sliceItem2 == null) {
                            sliceItem2 = this.f9296p.f9085a;
                        }
                        ((SearchResultIconSlice) m4).k(sliceItem2, c0836c);
                    }
                }
            } catch (PendingIntent.CanceledException e4) {
                Log.e("ShortcutView", "PendingIntent for slice cannot be sent", e4);
            }
        }
        return true;
    }
}
