package R;

import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.widget.TextView;
/* loaded from: classes.dex */
public final class l extends k {

    /* renamed from: a  reason: collision with root package name */
    public final j f1629a;

    public l(TextView textView) {
        this.f1629a = new j(textView);
    }

    @Override // R.k
    public final InputFilter[] a(InputFilter[] inputFilterArr) {
        Object obj = androidx.emoji2.text.b.f3224a;
        return inputFilterArr;
    }

    @Override // R.k
    public final boolean b() {
        return this.f1629a.f1628c;
    }

    @Override // R.k
    public final void c(boolean z4) {
        Object obj = androidx.emoji2.text.b.f3224a;
    }

    @Override // R.k
    public final void d(boolean z4) {
        Object obj = androidx.emoji2.text.b.f3224a;
        this.f1629a.f1628c = z4;
    }

    @Override // R.k
    public final TransformationMethod e(TransformationMethod transformationMethod) {
        Object obj = androidx.emoji2.text.b.f3224a;
        return transformationMethod;
    }
}
