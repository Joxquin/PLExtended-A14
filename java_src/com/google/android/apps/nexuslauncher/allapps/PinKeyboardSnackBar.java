package com.google.android.apps.nexuslauncher.allapps;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.Button;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.ConstantItem;
import com.android.launcher3.Insettable;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.KeyboardInsetAnimationCallback;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.views.AbstractSlideInView;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.allapps.PinKeyboardSnackBar;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
/* loaded from: classes.dex */
public class PinKeyboardSnackBar extends AbstractSlideInView implements Insettable {

    /* renamed from: j  reason: collision with root package name */
    public static final /* synthetic */ int f6678j = 0;

    /* renamed from: d  reason: collision with root package name */
    public final Context f6679d;

    /* renamed from: e  reason: collision with root package name */
    public final LauncherPrefs f6680e;

    /* renamed from: f  reason: collision with root package name */
    public final Rect f6681f;

    /* renamed from: g  reason: collision with root package name */
    public final StatsLogManager f6682g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f6683h;

    /* renamed from: i  reason: collision with root package name */
    public Button f6684i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum CloseAction {
        CLOSE_NO_ACTION(0),
        CLOSE_ACTION_DISMISS(1),
        CLOSE_ACTION_ACCEPTED(2),
        CLOSE_ACTION_DISMISS_WHEN_FLAG_ON(3);
        
        public final int closeAction;

        CloseAction(int i4) {
            this.closeAction = i4;
        }
    }

    public PinKeyboardSnackBar(Context context) {
        this(context, null, 0);
    }

    public static void a(ActivityContext activityContext) {
        if (activityContext.getAppsView().getCurrentPage() != 0) {
            return;
        }
        PinKeyboardSnackBar pinKeyboardSnackBar = (PinKeyboardSnackBar) LayoutInflater.from((Context) activityContext).inflate(R.layout.search_pin_keyboard_snackbar, (ViewGroup) activityContext.getDragLayer(), false);
        pinKeyboardSnackBar.f6683h = true;
        AbstractFloatingView.closeAllOpenViewsExcept((ActivityContext) pinKeyboardSnackBar.mActivityContext, AbstractFloatingView.TYPE_TASKBAR_OVERLAYS);
        pinKeyboardSnackBar.attachToContainer();
        if (pinKeyboardSnackBar.f6683h) {
            pinKeyboardSnackBar.f6684i.setText(pinKeyboardSnackBar.getResources().getString(R.string.search_keyboard_snackbar_turn_on));
        }
        pinKeyboardSnackBar.setAlpha(0.0f);
        pinKeyboardSnackBar.animate().alpha(1.0f).setDuration(200L).start();
        pinKeyboardSnackBar.mIsOpen = true;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final void handleClose(boolean z4) {
        if (this.mIsOpen) {
            if (z4) {
                animate().alpha(0.0f).withLayer().setStartDelay(0L).setDuration(200L).setInterpolator(y0.e.f12957u).withEndAction(new U0(this, 2)).start();
            } else {
                animate().cancel();
                ((ActivityContext) this.f6679d).getDragLayer().removeView(this);
            }
            this.mIsOpen = false;
        }
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final boolean isOfType(int i4) {
        return (i4 & 32) != 0;
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        if (Utilities.ATLEAST_R) {
            if (windowInsets.isVisible(WindowInsets.Type.ime())) {
                setTranslationY(-windowInsets.getInsets(WindowInsets.Type.ime()).bottom);
                setVisibility(0);
                post(new U0(this, 0));
            } else {
                post(new U0(this, 1));
            }
        }
        return windowInsets;
    }

    @Override // com.android.launcher3.views.AbstractSlideInView, com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || ((ActivityContext) this.f6679d).getDragLayer().isEventOverView(this, motionEvent)) {
            return false;
        }
        close(true);
        return false;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        if (Utilities.ATLEAST_R) {
            setWindowInsetsAnimationCallback(new KeyboardInsetAnimationCallback(this));
        }
        Button button = (Button) findViewById(R.id.accept);
        this.f6684i = button;
        button.setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.apps.nexuslauncher.allapps.V0

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ PinKeyboardSnackBar f6956e;

            {
                this.f6956e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (r2) {
                    case 0:
                        PinKeyboardSnackBar pinKeyboardSnackBar = this.f6956e;
                        pinKeyboardSnackBar.f6680e.put(C0719y0.f7256K, Integer.valueOf(PinKeyboardSnackBar.CloseAction.CLOSE_ACTION_ACCEPTED.closeAction));
                        LauncherPrefs.getPrefs(pinKeyboardSnackBar.f6679d).edit().putBoolean("pref_search_show_keyboard", pinKeyboardSnackBar.f6683h).apply();
                        pinKeyboardSnackBar.handleClose(true);
                        if (com.google.android.apps.nexuslauncher.c.f7325n.get()) {
                            pinKeyboardSnackBar.f6682g.logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_EDU_TURNED_ON_WITH_ENABLE_SHOW_IME_SNACKBAR_AGAIN);
                            return;
                        } else {
                            pinKeyboardSnackBar.f6682g.logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_EDU_TURNED_ON);
                            return;
                        }
                    default:
                        PinKeyboardSnackBar pinKeyboardSnackBar2 = this.f6956e;
                        LauncherPrefs launcherPrefs = pinKeyboardSnackBar2.f6680e;
                        ConstantItem constantItem = C0719y0.f7256K;
                        if (((Integer) launcherPrefs.get(constantItem)).intValue() == PinKeyboardSnackBar.CloseAction.CLOSE_NO_ACTION.closeAction) {
                            pinKeyboardSnackBar2.f6680e.put(constantItem, Integer.valueOf(PinKeyboardSnackBar.CloseAction.CLOSE_ACTION_DISMISS.closeAction));
                            pinKeyboardSnackBar2.f6682g.logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_EDU_TURNED_OFF);
                        } else {
                            pinKeyboardSnackBar2.f6680e.put(constantItem, Integer.valueOf(PinKeyboardSnackBar.CloseAction.CLOSE_ACTION_DISMISS_WHEN_FLAG_ON.closeAction));
                            pinKeyboardSnackBar2.f6682g.logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_EDU_TURNED_OFF_WITH_ENABLE_SHOW_IME_SNACKBAR_AGAIN);
                        }
                        pinKeyboardSnackBar2.handleClose(true);
                        return;
                }
            }
        });
        findViewById(R.id.dismiss).setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.apps.nexuslauncher.allapps.V0

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ PinKeyboardSnackBar f6956e;

            {
                this.f6956e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (r2) {
                    case 0:
                        PinKeyboardSnackBar pinKeyboardSnackBar = this.f6956e;
                        pinKeyboardSnackBar.f6680e.put(C0719y0.f7256K, Integer.valueOf(PinKeyboardSnackBar.CloseAction.CLOSE_ACTION_ACCEPTED.closeAction));
                        LauncherPrefs.getPrefs(pinKeyboardSnackBar.f6679d).edit().putBoolean("pref_search_show_keyboard", pinKeyboardSnackBar.f6683h).apply();
                        pinKeyboardSnackBar.handleClose(true);
                        if (com.google.android.apps.nexuslauncher.c.f7325n.get()) {
                            pinKeyboardSnackBar.f6682g.logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_EDU_TURNED_ON_WITH_ENABLE_SHOW_IME_SNACKBAR_AGAIN);
                            return;
                        } else {
                            pinKeyboardSnackBar.f6682g.logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_EDU_TURNED_ON);
                            return;
                        }
                    default:
                        PinKeyboardSnackBar pinKeyboardSnackBar2 = this.f6956e;
                        LauncherPrefs launcherPrefs = pinKeyboardSnackBar2.f6680e;
                        ConstantItem constantItem = C0719y0.f7256K;
                        if (((Integer) launcherPrefs.get(constantItem)).intValue() == PinKeyboardSnackBar.CloseAction.CLOSE_NO_ACTION.closeAction) {
                            pinKeyboardSnackBar2.f6680e.put(constantItem, Integer.valueOf(PinKeyboardSnackBar.CloseAction.CLOSE_ACTION_DISMISS.closeAction));
                            pinKeyboardSnackBar2.f6682g.logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_EDU_TURNED_OFF);
                        } else {
                            pinKeyboardSnackBar2.f6680e.put(constantItem, Integer.valueOf(PinKeyboardSnackBar.CloseAction.CLOSE_ACTION_DISMISS_WHEN_FLAG_ON.closeAction));
                            pinKeyboardSnackBar2.f6682g.logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_EDU_TURNED_OFF_WITH_ENABLE_SHOW_IME_SNACKBAR_AGAIN);
                        }
                        pinKeyboardSnackBar2.handleClose(true);
                        return;
                }
            }
        });
    }

    @Override // com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
        this.f6681f.set(rect);
        setPadding(this.f6681f.left, getPaddingTop(), this.f6681f.right, getPaddingBottom());
    }

    public PinKeyboardSnackBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PinKeyboardSnackBar(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f6681f = new Rect();
        Context lookupContext = ActivityContext.lookupContext(context);
        this.f6679d = lookupContext;
        this.f6682g = ((ActivityContext) lookupContext).getStatsLogManager();
        LauncherPrefs.Companion companion = LauncherPrefs.Companion;
        this.f6680e = LauncherPrefs.Companion.get(context);
        this.mContent = this;
        setImportantForAccessibility(4);
    }
}
