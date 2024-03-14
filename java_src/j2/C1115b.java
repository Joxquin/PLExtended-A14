package j2;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import java.util.ArrayList;
import java.util.List;
/* renamed from: j2.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1115b {
    public static void a(AnimatorSet animatorSet, List list) {
        ArrayList arrayList = (ArrayList) list;
        int size = arrayList.size();
        long j4 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            Animator animator = (Animator) arrayList.get(i4);
            j4 = Math.max(j4, animator.getDuration() + animator.getStartDelay());
        }
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 0);
        ofInt.setDuration(j4);
        arrayList.add(0, ofInt);
        animatorSet.playTogether(list);
    }
}
