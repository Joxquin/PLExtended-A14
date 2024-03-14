package O1;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class w extends FrameLayout {

    /* renamed from: o  reason: collision with root package name */
    public static final v f1488o = new v();

    /* renamed from: d  reason: collision with root package name */
    public final Paint f1489d;

    /* renamed from: e  reason: collision with root package name */
    public final Matrix f1490e;

    /* renamed from: f  reason: collision with root package name */
    public final Drawable f1491f;

    /* renamed from: g  reason: collision with root package name */
    public final float f1492g;

    /* renamed from: h  reason: collision with root package name */
    public final int f1493h;

    /* renamed from: i  reason: collision with root package name */
    public final m f1494i;

    /* renamed from: j  reason: collision with root package name */
    public final ProgressBar f1495j;

    /* renamed from: k  reason: collision with root package name */
    public Bitmap f1496k;

    /* renamed from: l  reason: collision with root package name */
    public int f1497l;

    /* renamed from: m  reason: collision with root package name */
    public int f1498m;

    /* renamed from: n  reason: collision with root package name */
    public q f1499n;

    public w(Context context, m mVar) {
        super(context);
        this.f1489d = new Paint(1);
        this.f1490e = new Matrix();
        this.f1494i = mVar;
        this.f1491f = context.getDrawable(R.drawable.ic_done);
        float dimension = getResources().getDimension(R.dimen.carousel_selected_circle_radius);
        this.f1492g = dimension;
        this.f1493h = getResources().getDimensionPixelSize(R.dimen.carousel_selected_icon_size);
        ProgressBar progressBar = new ProgressBar(context);
        this.f1495j = progressBar;
        progressBar.setVisibility(8);
        int i4 = (int) (dimension * 2.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i4, i4);
        layoutParams.gravity = 17;
        progressBar.setLayoutParams(layoutParams);
        addView(progressBar);
    }

    public static void a(w wVar, int i4) {
        if (i4 == wVar.f1497l) {
            return;
        }
        wVar.f1497l = i4;
        if (i4 == 0 || wVar.f1498m == 2) {
            wVar.setSelected(i4 == 2);
            wVar.f1495j.setVisibility(wVar.f1497l != 1 ? 8 : 0);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        q qVar = this.f1499n;
        if (qVar != null) {
            qVar.run();
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float f4;
        float f5;
        canvas.drawColor(this.f1494i.f1469e);
        if (this.f1496k == null) {
            return;
        }
        int width = getWidth();
        int height = getHeight();
        int width2 = this.f1496k.getWidth();
        int height2 = this.f1496k.getHeight();
        float f6 = 0.0f;
        if (width2 * height > width * height2) {
            f4 = height / height2;
            f5 = 0.0f;
            f6 = (width - (width2 * f4)) * 0.5f;
        } else {
            f4 = width / width2;
            f5 = (height - (height2 * f4)) * 0.5f;
        }
        this.f1490e.setScale(f4, f4);
        this.f1490e.postTranslate(Math.round(f6), Math.round(f5));
        canvas.drawBitmap(this.f1496k, this.f1490e, this.f1489d);
        if (isSelected()) {
            int i4 = width / 2;
            int i5 = height / 2;
            canvas.drawCircle(i4, i5, this.f1492g, this.f1489d);
            int i6 = this.f1493h / 2;
            this.f1491f.setBounds(i4 - i6, i5 - i6, i4 + i6, i5 + i6);
            this.f1491f.draw(canvas);
        }
    }
}
