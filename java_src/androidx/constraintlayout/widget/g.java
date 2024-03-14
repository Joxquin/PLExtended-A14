package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final int f2870a;

    /* renamed from: b  reason: collision with root package name */
    public final ArrayList f2871b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public final int f2872c;

    /* renamed from: d  reason: collision with root package name */
    public final q f2873d;

    public g(Context context, XmlPullParser xmlPullParser) {
        this.f2872c = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), w.f3028i);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i4 = 0; i4 < indexCount; i4++) {
            int index = obtainStyledAttributes.getIndex(i4);
            if (index == 0) {
                this.f2870a = obtainStyledAttributes.getResourceId(index, this.f2870a);
            } else if (index == 1) {
                int resourceId = obtainStyledAttributes.getResourceId(index, this.f2872c);
                this.f2872c = resourceId;
                String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                context.getResources().getResourceName(resourceId);
                if ("layout".equals(resourceTypeName)) {
                    q qVar = new q();
                    this.f2873d = qVar;
                    qVar.c((ConstraintLayout) LayoutInflater.from(context).inflate(resourceId, (ViewGroup) null));
                }
            }
        }
        obtainStyledAttributes.recycle();
    }
}
