package com.android.quickstep.interaction;

import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import androidx.fragment.app.AbstractC0220p0;
import androidx.fragment.app.C0189a;
import androidx.fragment.app.P;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.StatsLogManager;
import com.android.quickstep.TouchInteractionService;
import com.android.quickstep.interaction.TutorialController;
import com.android.quickstep.util.TISBindHelper;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class GestureSandboxActivity extends P {
    private static final String KEY_CURRENT_STEP = "current_step";
    static final String KEY_GESTURE_COMPLETE = "gesture_complete";
    private static final String KEY_TUTORIAL_STEPS = "tutorial_steps";
    static final String KEY_TUTORIAL_TYPE = "tutorial_type";
    static final String KEY_USE_TUTORIAL_MENU = "use_tutorial_menu";
    private GestureSandboxFragment mCurrentFragment;
    private int mCurrentStep;
    private int mNumSteps;
    private GestureSandboxFragment mPendingFragment;
    private SharedPreferences mSharedPrefs;
    private StatsLogManager mStatsLogManager;
    private TISBindHelper mTISBindHelper;
    private TutorialController.TutorialType[] mTutorialSteps;

    private void correctUserOrientation() {
        GestureSandboxFragment gestureSandboxFragment;
        if (!((InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.get(getApplicationContext())).getDeviceProfile(this).isTablet) {
            setRequestedOrientation(1);
            return;
        }
        boolean z4 = getResources().getConfiguration().orientation == 1;
        GestureSandboxFragment recreateFragment = (z4 || (gestureSandboxFragment = this.mPendingFragment) == null) ? null : gestureSandboxFragment.recreateFragment();
        if (z4) {
            recreateFragment = new RotationPromptFragment();
        } else if (recreateFragment == null) {
            recreateFragment = this.mCurrentFragment;
        }
        showFragment(recreateFragment);
    }

    private void disableSystemGestures() {
        Display display = getDisplay();
        if (display != null) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            display.getMetrics(displayMetrics);
            getWindow().setSystemGestureExclusionRects(Arrays.asList(new Rect(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels)));
        }
    }

    private String[] getTutorialStepNames() {
        TutorialController.TutorialType[] tutorialTypeArr = this.mTutorialSteps;
        int i4 = 0;
        if (tutorialTypeArr == null) {
            return new String[0];
        }
        String[] strArr = new String[tutorialTypeArr.length];
        int length = tutorialTypeArr.length;
        int i5 = 0;
        while (i4 < length) {
            strArr[i5] = tutorialTypeArr[i4].name();
            i4++;
            i5++;
        }
        return strArr;
    }

    private TutorialController.TutorialType[] getTutorialSteps(Bundle bundle) {
        String[] strArr;
        TutorialController.TutorialType[] tutorialTypeArr = {TutorialController.TutorialType.HOME_NAVIGATION, TutorialController.TutorialType.BACK_NAVIGATION, TutorialController.TutorialType.OVERVIEW_NAVIGATION};
        this.mCurrentStep = 1;
        this.mNumSteps = 3;
        if (bundle != null && bundle.containsKey(KEY_TUTORIAL_STEPS)) {
            Object obj = bundle.get(KEY_TUTORIAL_STEPS);
            if (obj instanceof String) {
                String str = (String) obj;
                strArr = TextUtils.isEmpty(str) ? null : str.split(",");
            } else if (obj instanceof String[]) {
                strArr = (String[]) obj;
            }
            if (strArr != null && strArr.length != 0) {
                int length = strArr.length;
                TutorialController.TutorialType[] tutorialTypeArr2 = new TutorialController.TutorialType[length];
                for (int i4 = 0; i4 < strArr.length; i4++) {
                    tutorialTypeArr2[i4] = TutorialController.TutorialType.valueOf(strArr[i4]);
                }
                this.mCurrentStep = Math.max(bundle.getInt(KEY_CURRENT_STEP, -1), 1);
                this.mNumSteps = length;
                return tutorialTypeArr2;
            }
        }
        return tutorialTypeArr;
    }

    private void hideSystemUI() {
        getWindow().getDecorView().setSystemUiVisibility(5894);
        getWindow().setNavigationBarColor(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showFragment$0() {
        this.mCurrentFragment.onAttachedToWindow();
    }

    private TutorialFragment makeTutorialFragment(TutorialController.TutorialType tutorialType, boolean z4, boolean z5) {
        return TutorialFragment.newInstance(tutorialType, z4, z5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTISConnected(TouchInteractionService.TISBinder tISBinder) {
        updateServiceState(isResumed());
    }

    private void showFragment(GestureSandboxFragment gestureSandboxFragment) {
        if (this.mCurrentFragment.recreateFragment() != null) {
            this.mPendingFragment = this.mCurrentFragment;
        }
        this.mCurrentFragment = gestureSandboxFragment;
        AbstractC0220p0 supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.getClass();
        C0189a c0189a = new C0189a(supportFragmentManager);
        c0189a.g(this.mCurrentFragment, R.id.gesture_tutorial_fragment_container);
        Runnable runnable = new Runnable() { // from class: com.android.quickstep.interaction.k
            @Override // java.lang.Runnable
            public final void run() {
                GestureSandboxActivity.this.lambda$showFragment$0();
            }
        };
        if (c0189a.f3368g) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        c0189a.f3369h = false;
        if (c0189a.f3378q == null) {
            c0189a.f3378q = new ArrayList();
        }
        c0189a.f3378q.add(runnable);
        c0189a.d(false);
    }

    private void updateServiceState(boolean z4) {
        TouchInteractionService.TISBinder binder = this.mTISBindHelper.getBinder();
        if (binder != null) {
            binder.setGestureBlockedTaskId(z4 ? getTaskId() : -1);
        }
    }

    public void continueTutorial() {
        TutorialController.TutorialType[] tutorialTypeArr;
        if (isTutorialComplete() || (tutorialTypeArr = this.mTutorialSteps) == null) {
            this.mCurrentFragment.close();
            return;
        }
        launchTutorialStep(tutorialTypeArr[this.mCurrentStep], false);
        this.mCurrentStep++;
    }

    public int getCurrentStep() {
        return this.mCurrentStep;
    }

    public int getNumSteps() {
        return this.mNumSteps;
    }

    public SharedPreferences getSharedPrefs() {
        return this.mSharedPrefs;
    }

    public StatsLogManager getStatsLogManager() {
        return this.mStatsLogManager;
    }

    public boolean isTutorialComplete() {
        return this.mCurrentStep >= this.mNumSteps;
    }

    public void launchTutorialMenu() {
        showFragment(new MenuFragment());
    }

    public void launchTutorialStep(TutorialController.TutorialType tutorialType, boolean z4) {
        showFragment(makeTutorialFragment(tutorialType, false, z4));
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mCurrentFragment.shouldDisableSystemGestures()) {
            disableSystemGestures();
        }
        this.mCurrentFragment.onAttachedToWindow();
    }

    @Override // androidx.activity.l, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get()) {
            correctUserOrientation();
        }
    }

    @Override // androidx.fragment.app.P, androidx.activity.l, B.e, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.gesture_tutorial_activity);
        this.mSharedPrefs = LauncherPrefs.getPrefs(this);
        this.mStatsLogManager = StatsLogManager.newInstance(getApplicationContext());
        if (bundle == null) {
            bundle = getIntent().getExtras();
        }
        boolean z4 = bundle != null && bundle.getBoolean(KEY_GESTURE_COMPLETE, false);
        FeatureFlags.BooleanFlag booleanFlag = FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL;
        if (booleanFlag.get() && bundle != null && bundle.getBoolean(KEY_USE_TUTORIAL_MENU, false)) {
            this.mTutorialSteps = null;
            TutorialController.TutorialType tutorialType = (TutorialController.TutorialType) bundle.get(KEY_TUTORIAL_TYPE);
            this.mCurrentFragment = tutorialType == null ? new MenuFragment() : makeTutorialFragment(tutorialType, z4, true);
        } else {
            TutorialController.TutorialType[] tutorialSteps = getTutorialSteps(bundle);
            this.mTutorialSteps = tutorialSteps;
            this.mCurrentFragment = makeTutorialFragment(tutorialSteps[this.mCurrentStep - 1], z4, false);
        }
        AbstractC0220p0 supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.getClass();
        C0189a c0189a = new C0189a(supportFragmentManager);
        c0189a.e(R.id.gesture_tutorial_fragment_container, this.mCurrentFragment, null, 1);
        c0189a.d(false);
        if (booleanFlag.get()) {
            correctUserOrientation();
        }
        this.mTISBindHelper = new TISBindHelper(this, new Consumer() { // from class: com.android.quickstep.interaction.j
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                GestureSandboxActivity.this.onTISConnected((TouchInteractionService.TISBinder) obj);
            }
        });
    }

    @Override // androidx.fragment.app.P, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mTISBindHelper.onDestroy();
        updateServiceState(false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mCurrentFragment.onDetachedFromWindow();
    }

    @Override // androidx.fragment.app.P, android.app.Activity
    public void onPause() {
        super.onPause();
        updateServiceState(false);
    }

    @Override // androidx.fragment.app.P, android.app.Activity
    public void onResume() {
        super.onResume();
        updateServiceState(true);
    }

    @Override // androidx.activity.l, B.e, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putStringArray(KEY_TUTORIAL_STEPS, getTutorialStepNames());
        bundle.putInt(KEY_CURRENT_STEP, this.mCurrentStep);
        this.mCurrentFragment.onSaveInstanceState(bundle);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z4) {
        super.onWindowFocusChanged(z4);
        if (z4) {
            hideSystemUI();
        }
    }
}
