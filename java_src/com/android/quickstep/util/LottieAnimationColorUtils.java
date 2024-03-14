package com.android.quickstep.util;

import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import com.airbnb.lottie.LottieAnimationView;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.stream.Collectors;
import k0.C1198m;
import k0.InterfaceC1181F;
import k0.InterfaceC1182G;
import p0.C1343e;
/* loaded from: classes.dex */
public final class LottieAnimationColorUtils {
    private LottieAnimationColorUtils() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$updateColors$0(Resources resources, Map map, Resources.Theme theme, String str) {
        return Integer.valueOf(resources.getColor(((Integer) map.get(str)).intValue(), theme));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ColorFilter lambda$updateColors$1(Integer num, x0.b bVar) {
        return new PorterDuffColorFilter(num.intValue(), PorterDuff.Mode.SRC_ATOP);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateColors$2(LottieAnimationView lottieAnimationView, String str, Integer num) {
        lottieAnimationView.addValueCallback(new C1343e("**", str, "**"), InterfaceC1182G.f11058K, new A(num));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateColors$3(Map map, final LottieAnimationView lottieAnimationView, C1198m c1198m) {
        map.forEach(new BiConsumer() { // from class: com.android.quickstep.util.B
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                LottieAnimationColorUtils.lambda$updateColors$2(LottieAnimationView.this, (String) obj, (Integer) obj2);
            }
        });
    }

    public static void updateColors(LottieAnimationView lottieAnimationView, Map map) {
        updateColors(lottieAnimationView, map, null);
    }

    public static void updateColors(final LottieAnimationView lottieAnimationView, final Map map, final Resources.Theme theme) {
        final Resources resources = lottieAnimationView.getResources();
        if (theme != null) {
            map = (Map) map.keySet().stream().collect(Collectors.toMap(Function.identity(), new Function() { // from class: com.android.quickstep.util.y
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Integer lambda$updateColors$0;
                    lambda$updateColors$0 = LottieAnimationColorUtils.lambda$updateColors$0(resources, map, theme, (String) obj);
                    return lambda$updateColors$0;
                }
            }));
        }
        lottieAnimationView.addLottieOnCompositionLoadedListener(new InterfaceC1181F() { // from class: com.android.quickstep.util.z
            @Override // k0.InterfaceC1181F
            public final void a(C1198m c1198m) {
                LottieAnimationColorUtils.lambda$updateColors$3(map, lottieAnimationView, c1198m);
            }
        });
    }
}
