package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.util.Xml;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f2778a;

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintAttribute$AttributeType f2779b;

    /* renamed from: c  reason: collision with root package name */
    public int f2780c;

    /* renamed from: d  reason: collision with root package name */
    public float f2781d;

    /* renamed from: e  reason: collision with root package name */
    public String f2782e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f2783f;

    /* renamed from: g  reason: collision with root package name */
    public int f2784g;

    public a(String str, ConstraintAttribute$AttributeType constraintAttribute$AttributeType, Object obj, boolean z4) {
        this.f2778a = false;
        this.f2779b = constraintAttribute$AttributeType;
        this.f2778a = z4;
        b(obj);
    }

    public static void a(Context context, XmlPullParser xmlPullParser, HashMap hashMap) {
        ConstraintAttribute$AttributeType constraintAttribute$AttributeType;
        Object valueOf;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), w.f3024e);
        int indexCount = obtainStyledAttributes.getIndexCount();
        String str = null;
        Object obj = null;
        ConstraintAttribute$AttributeType constraintAttribute$AttributeType2 = null;
        boolean z4 = false;
        for (int i4 = 0; i4 < indexCount; i4++) {
            int index = obtainStyledAttributes.getIndex(i4);
            if (index == 0) {
                str = obtainStyledAttributes.getString(index);
                if (str != null && str.length() > 0) {
                    str = Character.toUpperCase(str.charAt(0)) + str.substring(1);
                }
            } else if (index == 10) {
                str = obtainStyledAttributes.getString(index);
                z4 = true;
            } else if (index == 1) {
                obj = Boolean.valueOf(obtainStyledAttributes.getBoolean(index, false));
                constraintAttribute$AttributeType2 = ConstraintAttribute$AttributeType.BOOLEAN_TYPE;
            } else {
                if (index == 3) {
                    constraintAttribute$AttributeType = ConstraintAttribute$AttributeType.COLOR_TYPE;
                    valueOf = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else if (index == 2) {
                    constraintAttribute$AttributeType = ConstraintAttribute$AttributeType.COLOR_DRAWABLE_TYPE;
                    valueOf = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else {
                    ConstraintAttribute$AttributeType constraintAttribute$AttributeType3 = ConstraintAttribute$AttributeType.DIMENSION_TYPE;
                    if (index == 7) {
                        obj = Float.valueOf(TypedValue.applyDimension(1, obtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                    } else if (index == 4) {
                        obj = Float.valueOf(obtainStyledAttributes.getDimension(index, 0.0f));
                    } else if (index == 5) {
                        constraintAttribute$AttributeType = ConstraintAttribute$AttributeType.FLOAT_TYPE;
                        valueOf = Float.valueOf(obtainStyledAttributes.getFloat(index, Float.NaN));
                    } else if (index == 6) {
                        constraintAttribute$AttributeType = ConstraintAttribute$AttributeType.INT_TYPE;
                        valueOf = Integer.valueOf(obtainStyledAttributes.getInteger(index, -1));
                    } else if (index == 9) {
                        constraintAttribute$AttributeType = ConstraintAttribute$AttributeType.STRING_TYPE;
                        valueOf = obtainStyledAttributes.getString(index);
                    } else if (index == 8) {
                        constraintAttribute$AttributeType = ConstraintAttribute$AttributeType.REFERENCE_TYPE;
                        int resourceId = obtainStyledAttributes.getResourceId(index, -1);
                        if (resourceId == -1) {
                            resourceId = obtainStyledAttributes.getInt(index, -1);
                        }
                        valueOf = Integer.valueOf(resourceId);
                    }
                    constraintAttribute$AttributeType2 = constraintAttribute$AttributeType3;
                }
                Object obj2 = valueOf;
                constraintAttribute$AttributeType2 = constraintAttribute$AttributeType;
                obj = obj2;
            }
        }
        if (str != null && obj != null) {
            hashMap.put(str, new a(str, constraintAttribute$AttributeType2, obj, z4));
        }
        obtainStyledAttributes.recycle();
    }

    public final void b(Object obj) {
        switch (this.f2779b.ordinal()) {
            case 0:
            case 7:
                this.f2780c = ((Integer) obj).intValue();
                return;
            case 1:
                this.f2781d = ((Float) obj).floatValue();
                return;
            case 2:
            case 3:
                this.f2784g = ((Integer) obj).intValue();
                return;
            case 4:
                this.f2782e = (String) obj;
                return;
            case 5:
                this.f2783f = ((Boolean) obj).booleanValue();
                return;
            case 6:
                this.f2781d = ((Float) obj).floatValue();
                return;
            default:
                return;
        }
    }

    public a(a aVar, Object obj) {
        this.f2778a = false;
        aVar.getClass();
        this.f2779b = aVar.f2779b;
        b(obj);
    }
}
