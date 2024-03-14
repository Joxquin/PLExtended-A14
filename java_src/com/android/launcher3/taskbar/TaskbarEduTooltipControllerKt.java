package com.android.launcher3.taskbar;

import com.airbnb.lottie.LottieAnimationView;
import com.android.launcher3.Utilities;
import com.android.quickstep.util.LottieAnimationColorUtils;
import com.android.systemui.shared.R;
import java.util.Map;
import kotlin.Pair;
/* loaded from: classes.dex */
public final class TaskbarEduTooltipControllerKt {
    private static final Map DARK_TO_LIGHT_COLORS = kotlin.collections.x.e(new Pair(".blue100", Integer.valueOf((int) R.color.lottie_blue400)), new Pair(".blue400", Integer.valueOf((int) R.color.lottie_blue600)), new Pair(".green100", Integer.valueOf((int) R.color.lottie_green400)), new Pair(".green400", Integer.valueOf((int) R.color.lottie_green600)), new Pair(".grey300", Integer.valueOf((int) R.color.lottie_grey600)), new Pair(".grey400", Integer.valueOf((int) R.color.lottie_grey700)), new Pair(".grey800", Integer.valueOf((int) R.color.lottie_grey200)), new Pair(".red400", Integer.valueOf((int) R.color.lottie_red600)), new Pair(".yellow100", Integer.valueOf((int) R.color.lottie_yellow400)), new Pair(".yellow400", Integer.valueOf((int) R.color.lottie_yellow600)));

    public static final void access$supportLightTheme(LottieAnimationView lottieAnimationView) {
        if (Utilities.isDarkTheme(lottieAnimationView.getContext())) {
            return;
        }
        LottieAnimationColorUtils.updateColors(lottieAnimationView, DARK_TO_LIGHT_COLORS, lottieAnimationView.getContext().getTheme());
    }
}
