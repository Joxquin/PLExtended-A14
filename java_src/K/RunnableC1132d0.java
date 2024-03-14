package k;

import android.graphics.Typeface;
import android.widget.TextView;
/* renamed from: k.d0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1132d0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ TextView f10881d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Typeface f10882e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ int f10883f;

    public RunnableC1132d0(TextView textView, Typeface typeface, int i4) {
        this.f10881d = textView;
        this.f10882e = typeface;
        this.f10883f = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10881d.setTypeface(this.f10882e, this.f10883f);
    }
}
