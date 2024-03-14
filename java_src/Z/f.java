package z;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;
import y.C1487a;
/* loaded from: classes.dex */
public final class f extends ViewGroup.MarginLayoutParams {

    /* renamed from: a  reason: collision with root package name */
    public c f12967a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f12968b;

    /* renamed from: c  reason: collision with root package name */
    public final int f12969c;

    /* renamed from: d  reason: collision with root package name */
    public int f12970d;

    /* renamed from: e  reason: collision with root package name */
    public final int f12971e;

    /* renamed from: f  reason: collision with root package name */
    public final int f12972f;

    /* renamed from: g  reason: collision with root package name */
    public int f12973g;

    /* renamed from: h  reason: collision with root package name */
    public int f12974h;

    /* renamed from: i  reason: collision with root package name */
    public int f12975i;

    /* renamed from: j  reason: collision with root package name */
    public int f12976j;

    /* renamed from: k  reason: collision with root package name */
    public View f12977k;

    /* renamed from: l  reason: collision with root package name */
    public View f12978l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f12979m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f12980n;

    /* renamed from: o  reason: collision with root package name */
    public boolean f12981o;

    /* renamed from: p  reason: collision with root package name */
    public boolean f12982p;

    /* renamed from: q  reason: collision with root package name */
    public final Rect f12983q;

    public f() {
        super(-2, -2);
        this.f12968b = false;
        this.f12969c = 0;
        this.f12970d = 0;
        this.f12971e = -1;
        this.f12972f = -1;
        this.f12973g = 0;
        this.f12974h = 0;
        this.f12983q = new Rect();
    }

    public final boolean a(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                return false;
            }
            return this.f12981o;
        }
        return this.f12980n;
    }

    public f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        c cVar;
        this.f12968b = false;
        this.f12969c = 0;
        this.f12970d = 0;
        this.f12971e = -1;
        this.f12972f = -1;
        this.f12973g = 0;
        this.f12974h = 0;
        this.f12983q = new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1487a.f12919b);
        this.f12969c = obtainStyledAttributes.getInteger(0, 0);
        this.f12972f = obtainStyledAttributes.getResourceId(1, -1);
        this.f12970d = obtainStyledAttributes.getInteger(2, 0);
        this.f12971e = obtainStyledAttributes.getInteger(6, -1);
        this.f12973g = obtainStyledAttributes.getInt(5, 0);
        this.f12974h = obtainStyledAttributes.getInt(4, 0);
        boolean hasValue = obtainStyledAttributes.hasValue(3);
        this.f12968b = hasValue;
        if (hasValue) {
            String string = obtainStyledAttributes.getString(3);
            String str = CoordinatorLayout.f3033v;
            if (TextUtils.isEmpty(string)) {
                cVar = null;
            } else {
                if (string.startsWith(".")) {
                    string = context.getPackageName() + string;
                } else if (string.indexOf(46) < 0) {
                    String str2 = CoordinatorLayout.f3033v;
                    if (!TextUtils.isEmpty(str2)) {
                        string = str2 + '.' + string;
                    }
                }
                try {
                    ThreadLocal threadLocal = CoordinatorLayout.f3035x;
                    Map map = (Map) threadLocal.get();
                    if (map == null) {
                        map = new HashMap();
                        threadLocal.set(map);
                    }
                    Constructor<?> constructor = (Constructor) map.get(string);
                    if (constructor == null) {
                        constructor = Class.forName(string, false, context.getClassLoader()).getConstructor(CoordinatorLayout.f3034w);
                        constructor.setAccessible(true);
                        map.put(string, constructor);
                    }
                    cVar = (c) constructor.newInstance(context, attributeSet);
                } catch (Exception e4) {
                    throw new RuntimeException(androidx.constraintlayout.widget.j.a("Could not inflate Behavior subclass ", string), e4);
                }
            }
            this.f12967a = cVar;
        }
        obtainStyledAttributes.recycle();
        c cVar2 = this.f12967a;
        if (cVar2 != null) {
            cVar2.c(this);
        }
    }

    public f(f fVar) {
        super((ViewGroup.MarginLayoutParams) fVar);
        this.f12968b = false;
        this.f12969c = 0;
        this.f12970d = 0;
        this.f12971e = -1;
        this.f12972f = -1;
        this.f12973g = 0;
        this.f12974h = 0;
        this.f12983q = new Rect();
    }

    public f(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f12968b = false;
        this.f12969c = 0;
        this.f12970d = 0;
        this.f12971e = -1;
        this.f12972f = -1;
        this.f12973g = 0;
        this.f12974h = 0;
        this.f12983q = new Rect();
    }

    public f(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f12968b = false;
        this.f12969c = 0;
        this.f12970d = 0;
        this.f12971e = -1;
        this.f12972f = -1;
        this.f12973g = 0;
        this.f12974h = 0;
        this.f12983q = new Rect();
    }
}
