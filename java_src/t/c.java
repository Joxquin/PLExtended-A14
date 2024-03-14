package T;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.fragment.app.AbstractC0220p0;
import androidx.fragment.app.K;
import androidx.fragment.app.strictmode.FragmentReuseViolation;
import androidx.fragment.app.strictmode.FragmentStrictMode$Flag;
import androidx.fragment.app.strictmode.Violation;
import java.util.LinkedHashMap;
import java.util.Set;
import kotlin.collections.s;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final b f1688a = b.f1685c;

    public static b a(K k4) {
        while (k4 != null) {
            if (k4.isAdded()) {
                h.d(k4.getParentFragmentManager(), "declaringFragment.parentFragmentManager");
            }
            k4 = k4.getParentFragment();
        }
        return f1688a;
    }

    public static void b(b bVar, final Violation violation) {
        K a4 = violation.a();
        final String name = a4.getClass().getName();
        FragmentStrictMode$Flag fragmentStrictMode$Flag = FragmentStrictMode$Flag.PENALTY_LOG;
        Set set = bVar.f1686a;
        if (set.contains(fragmentStrictMode$Flag)) {
            Log.d("FragmentStrictMode", "Policy violation in ".concat(name), violation);
        }
        if (set.contains(FragmentStrictMode$Flag.PENALTY_DEATH)) {
            Runnable runnable = new Runnable() { // from class: T.a
                @Override // java.lang.Runnable
                public final void run() {
                    Violation violation2 = violation;
                    h.e(violation2, "$violation");
                    Log.e("FragmentStrictMode", "Policy violation with PENALTY_DEATH in " + ((String) name), violation2);
                    throw violation2;
                }
            };
            if (!a4.isAdded()) {
                runnable.run();
                throw null;
            }
            Handler handler = a4.getParentFragmentManager().f3484u.f3357f;
            h.d(handler, "fragment.parentFragmentManager.host.handler");
            if (h.a(handler.getLooper(), Looper.myLooper())) {
                runnable.run();
                throw null;
            } else {
                handler.post(runnable);
            }
        }
    }

    public static void c(Violation violation) {
        if (AbstractC0220p0.H(3)) {
            Log.d("FragmentManager", "StrictMode violation in ".concat(violation.a().getClass().getName()), violation);
        }
    }

    public static final void d(K fragment, String previousFragmentId) {
        h.e(fragment, "fragment");
        h.e(previousFragmentId, "previousFragmentId");
        FragmentReuseViolation fragmentReuseViolation = new FragmentReuseViolation(fragment, previousFragmentId);
        c(fragmentReuseViolation);
        b a4 = a(fragment);
        if (a4.f1686a.contains(FragmentStrictMode$Flag.DETECT_FRAGMENT_REUSE) && e(a4, fragment.getClass(), FragmentReuseViolation.class)) {
            b(a4, fragmentReuseViolation);
        }
    }

    public static boolean e(b bVar, Class cls, Class cls2) {
        Set set = (Set) ((LinkedHashMap) bVar.f1687b).get(cls.getName());
        if (set == null) {
            return true;
        }
        if (h.a(cls2.getSuperclass(), Violation.class) || !s.f(set, cls2.getSuperclass())) {
            return !set.contains(cls2);
        }
        return false;
    }
}
