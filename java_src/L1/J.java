package L1;

import android.content.res.Resources;
import android.os.Handler;
import android.util.SparseArray;
import android.widget.FrameLayout;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class J {

    /* renamed from: a  reason: collision with root package name */
    public final FrameLayout f1088a;

    /* renamed from: b  reason: collision with root package name */
    public final C0060o f1089b;

    /* renamed from: c  reason: collision with root package name */
    public final Handler f1090c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1091d;

    /* renamed from: e  reason: collision with root package name */
    public final int f1092e;

    /* renamed from: f  reason: collision with root package name */
    public final SparseArray f1093f = new SparseArray();

    public J(FrameLayout frameLayout, C0060o c0060o, Handler handler) {
        this.f1088a = frameLayout;
        this.f1089b = c0060o;
        this.f1090c = handler;
        Resources resources = frameLayout.getResources();
        this.f1091d = resources.getDimensionPixelSize(R.dimen.selection_padding);
        this.f1092e = resources.getDimensionPixelSize(R.dimen.selection_padding);
    }
}
