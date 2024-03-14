package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final float f2874a;

    /* renamed from: b  reason: collision with root package name */
    public final float f2875b;

    /* renamed from: c  reason: collision with root package name */
    public final float f2876c;

    /* renamed from: d  reason: collision with root package name */
    public final float f2877d;

    /* renamed from: e  reason: collision with root package name */
    public final int f2878e;

    /* renamed from: f  reason: collision with root package name */
    public final q f2879f;

    public h(Context context, XmlPullParser xmlPullParser) {
        this.f2874a = Float.NaN;
        this.f2875b = Float.NaN;
        this.f2876c = Float.NaN;
        this.f2877d = Float.NaN;
        this.f2878e = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), w.f3030k);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i4 = 0; i4 < indexCount; i4++) {
            int index = obtainStyledAttributes.getIndex(i4);
            if (index == 0) {
                int resourceId = obtainStyledAttributes.getResourceId(index, this.f2878e);
                this.f2878e = resourceId;
                String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                context.getResources().getResourceName(resourceId);
                if ("layout".equals(resourceTypeName)) {
                    q qVar = new q();
                    this.f2879f = qVar;
                    qVar.c((ConstraintLayout) LayoutInflater.from(context).inflate(resourceId, (ViewGroup) null));
                }
            } else if (index == 1) {
                this.f2877d = obtainStyledAttributes.getDimension(index, this.f2877d);
            } else if (index == 2) {
                this.f2875b = obtainStyledAttributes.getDimension(index, this.f2875b);
            } else if (index == 3) {
                this.f2876c = obtainStyledAttributes.getDimension(index, this.f2876c);
            } else if (index == 4) {
                this.f2874a = obtainStyledAttributes.getDimension(index, this.f2874a);
            } else {
                Log.v("ConstraintLayoutStates", "Unknown tag");
            }
        }
        obtainStyledAttributes.recycle();
    }

    public final boolean a(float f4, float f5) {
        float f6 = this.f2874a;
        if (Float.isNaN(f6) || f4 >= f6) {
            float f7 = this.f2875b;
            if (Float.isNaN(f7) || f5 >= f7) {
                float f8 = this.f2876c;
                if (Float.isNaN(f8) || f4 <= f8) {
                    float f9 = this.f2877d;
                    return Float.isNaN(f9) || f5 <= f9;
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
