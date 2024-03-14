package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.strictmode.FragmentStrictMode$Flag;
import androidx.fragment.app.strictmode.FragmentTagUsageViolation;
/* loaded from: classes.dex */
public final class Y implements LayoutInflater.Factory2 {

    /* renamed from: d  reason: collision with root package name */
    public final AbstractC0220p0 f3361d;

    public Y(AbstractC0220p0 abstractC0220p0) {
        this.f3361d = abstractC0220p0;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z4;
        z0 f4;
        if (FragmentContainerView.class.getName().equals(str)) {
            return new FragmentContainerView(context, attributeSet, this.f3361d);
        }
        if ("fragment".equals(str)) {
            String attributeValue = attributeSet.getAttributeValue(null, "class");
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, S.a.f1679a);
            if (attributeValue == null) {
                attributeValue = obtainStyledAttributes.getString(0);
            }
            int resourceId = obtainStyledAttributes.getResourceId(1, -1);
            String string = obtainStyledAttributes.getString(2);
            obtainStyledAttributes.recycle();
            if (attributeValue != null) {
                try {
                    z4 = K.class.isAssignableFrom(C0204h0.b(context.getClassLoader(), attributeValue));
                } catch (ClassNotFoundException unused) {
                    z4 = false;
                }
                if (z4) {
                    int id = view != null ? view.getId() : 0;
                    if (id == -1 && resourceId == -1 && string == null) {
                        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                    }
                    K B3 = resourceId != -1 ? this.f3361d.B(resourceId) : null;
                    if (B3 == null && string != null) {
                        B3 = this.f3361d.C(string);
                    }
                    if (B3 == null && id != -1) {
                        B3 = this.f3361d.B(id);
                    }
                    if (B3 == null) {
                        C0204h0 E3 = this.f3361d.E();
                        context.getClassLoader();
                        B3 = E3.a(attributeValue);
                        B3.mFromLayout = true;
                        B3.mFragmentId = resourceId != 0 ? resourceId : id;
                        B3.mContainerId = id;
                        B3.mTag = string;
                        B3.mInLayout = true;
                        AbstractC0220p0 abstractC0220p0 = this.f3361d;
                        B3.mFragmentManager = abstractC0220p0;
                        W w4 = abstractC0220p0.f3484u;
                        B3.mHost = w4;
                        B3.onInflate(w4.f3356e, attributeSet, B3.mSavedFragmentState);
                        f4 = this.f3361d.a(B3);
                        if (AbstractC0220p0.H(2)) {
                            Log.v("FragmentManager", "Fragment " + B3 + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                        }
                    } else if (!B3.mInLayout) {
                        B3.mInLayout = true;
                        AbstractC0220p0 abstractC0220p02 = this.f3361d;
                        B3.mFragmentManager = abstractC0220p02;
                        W w5 = abstractC0220p02.f3484u;
                        B3.mHost = w5;
                        B3.onInflate(w5.f3356e, attributeSet, B3.mSavedFragmentState);
                        f4 = this.f3361d.f(B3);
                        if (AbstractC0220p0.H(2)) {
                            Log.v("FragmentManager", "Retained Fragment " + B3 + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                        }
                    } else {
                        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
                    }
                    ViewGroup viewGroup = (ViewGroup) view;
                    T.b bVar = T.c.f1688a;
                    FragmentTagUsageViolation fragmentTagUsageViolation = new FragmentTagUsageViolation(B3, viewGroup);
                    T.c.c(fragmentTagUsageViolation);
                    T.b a4 = T.c.a(B3);
                    if (a4.f1686a.contains(FragmentStrictMode$Flag.DETECT_FRAGMENT_TAG_USAGE) && T.c.e(a4, B3.getClass(), FragmentTagUsageViolation.class)) {
                        T.c.b(a4, fragmentTagUsageViolation);
                    }
                    B3.mContainer = viewGroup;
                    f4.k();
                    f4.j();
                    View view2 = B3.mView;
                    if (view2 != null) {
                        if (resourceId != 0) {
                            view2.setId(resourceId);
                        }
                        if (B3.mView.getTag() == null) {
                            B3.mView.setTag(string);
                        }
                        B3.mView.addOnAttachStateChangeListener(new X(this, f4));
                        return B3.mView;
                    }
                    throw new IllegalStateException(E.c.a("Fragment ", attributeValue, " did not create a view."));
                }
            }
            return null;
        }
        return null;
    }
}
