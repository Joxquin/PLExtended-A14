package R;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;
/* loaded from: classes.dex */
public final class j extends k {

    /* renamed from: a  reason: collision with root package name */
    public final TextView f1626a;

    /* renamed from: b  reason: collision with root package name */
    public final g f1627b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1628c = true;

    public j(TextView textView) {
        this.f1626a = textView;
        this.f1627b = new g(textView);
    }

    @Override // R.k
    public final InputFilter[] a(InputFilter[] inputFilterArr) {
        if (!this.f1628c) {
            SparseArray sparseArray = new SparseArray(1);
            for (int i4 = 0; i4 < inputFilterArr.length; i4++) {
                InputFilter inputFilter = inputFilterArr[i4];
                if (inputFilter instanceof g) {
                    sparseArray.put(i4, inputFilter);
                }
            }
            if (sparseArray.size() == 0) {
                return inputFilterArr;
            }
            int length = inputFilterArr.length;
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - sparseArray.size()];
            int i5 = 0;
            for (int i6 = 0; i6 < length; i6++) {
                if (sparseArray.indexOfKey(i6) < 0) {
                    inputFilterArr2[i5] = inputFilterArr[i6];
                    i5++;
                }
            }
            return inputFilterArr2;
        }
        int length2 = inputFilterArr.length;
        int i7 = 0;
        while (true) {
            g gVar = this.f1627b;
            if (i7 >= length2) {
                InputFilter[] inputFilterArr3 = new InputFilter[inputFilterArr.length + 1];
                System.arraycopy(inputFilterArr, 0, inputFilterArr3, 0, length2);
                inputFilterArr3[length2] = gVar;
                return inputFilterArr3;
            } else if (inputFilterArr[i7] == gVar) {
                return inputFilterArr;
            } else {
                i7++;
            }
        }
    }

    @Override // R.k
    public final boolean b() {
        return this.f1628c;
    }

    @Override // R.k
    public final void c(boolean z4) {
        if (z4) {
            TextView textView = this.f1626a;
            textView.setTransformationMethod(e(textView.getTransformationMethod()));
        }
    }

    @Override // R.k
    public final void d(boolean z4) {
        this.f1628c = z4;
        TextView textView = this.f1626a;
        textView.setTransformationMethod(e(textView.getTransformationMethod()));
        textView.setFilters(a(textView.getFilters()));
    }

    @Override // R.k
    public final TransformationMethod e(TransformationMethod transformationMethod) {
        return this.f1628c ? ((transformationMethod instanceof p) || (transformationMethod instanceof PasswordTransformationMethod)) ? transformationMethod : new p(transformationMethod) : transformationMethod instanceof p ? ((p) transformationMethod).f1635a : transformationMethod;
    }
}
