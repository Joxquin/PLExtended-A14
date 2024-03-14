package com.android.quickstep;

import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.RectF;
import android.util.Log;
import android.view.MotionEvent;
import com.android.launcher3.testing.shared.ResourceUtils;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.NavigationMode;
import com.android.launcher3.util.window.CachedDisplayInfo;
import com.android.systemui.shared.R;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class OrientationTouchTransformer {
    private static final boolean DEBUG = false;
    private static final int QUICKSTEP_ROTATION_UNINITIALIZED = -1;
    private static final String TAG = "OrientationTouchTransformer";
    private int mActiveTouchRotation;
    private QuickStepContractInfo mContractInfo;
    private boolean mEnableMultipleRegions;
    private OrientationRectF mLastRectTouched;
    private NavigationMode mMode;
    private int mNavBarGesturalHeight;
    private final int mNavBarLargerGesturalHeight;
    private Resources mResources;
    private final Map mSwipeTouchRegions = new HashMap();
    private final RectF mAssistantLeftRegion = new RectF();
    private final RectF mAssistantRightRegion = new RectF();
    private final RectF mOneHandedModeRegion = new RectF();
    private CachedDisplayInfo mCachedDisplayInfo = new CachedDisplayInfo();
    private int mQuickStepStartingRotation = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface QuickStepContractInfo {
        float getWindowCornerRadius();
    }

    public OrientationTouchTransformer(Resources resources, NavigationMode navigationMode, QuickStepContractInfo quickStepContractInfo) {
        this.mResources = resources;
        this.mMode = navigationMode;
        this.mContractInfo = quickStepContractInfo;
        int navbarSize = getNavbarSize("navigation_bar_gesture_height");
        this.mNavBarGesturalHeight = navbarSize;
        this.mNavBarLargerGesturalHeight = ResourceUtils.getDimenByName(navbarSize, resources, "navigation_bar_gesture_larger_height");
    }

    private OrientationRectF createRegionForDisplay(DisplayController.Info info) {
        if (enableLog()) {
            Log.d(TAG, "creating rotation region for: " + this.mCachedDisplayInfo.rotation + " with mode: " + this.mMode + " displayRotation: " + info.rotation + " displaySize: " + info.currentSize + " navBarHeight: " + this.mNavBarGesturalHeight);
        }
        Point point = info.currentSize;
        int i4 = info.rotation;
        int i5 = this.mNavBarGesturalHeight;
        OrientationRectF orientationRectF = new OrientationRectF(0.0f, 0.0f, point.x, point.y, i4);
        if (this.mMode == NavigationMode.NO_BUTTON) {
            ((RectF) orientationRectF).top = ((RectF) orientationRectF).bottom - i5;
            updateAssistantRegions(orientationRectF);
        } else {
            this.mAssistantLeftRegion.setEmpty();
            this.mAssistantRightRegion.setEmpty();
            int navbarSize = getNavbarSize("navigation_bar_width");
            if (i4 == 1) {
                ((RectF) orientationRectF).left = ((RectF) orientationRectF).right - navbarSize;
            } else if (i4 != 3) {
                ((RectF) orientationRectF).top = ((RectF) orientationRectF).bottom - i5;
            } else {
                ((RectF) orientationRectF).right = ((RectF) orientationRectF).left + navbarSize;
            }
        }
        this.mOneHandedModeRegion.set(0.0f, ((RectF) orientationRectF).bottom - this.mNavBarLargerGesturalHeight, point.x, point.y);
        return orientationRectF;
    }

    private boolean enableLog() {
        return false;
    }

    private int getNavbarSize(String str) {
        return ResourceUtils.getNavbarSize(this.mResources, str);
    }

    private void refreshTouchRegion(DisplayController.Info info, Resources resources) {
        this.mResources = resources;
        this.mSwipeTouchRegions.clear();
        resetSwipeRegions(info);
    }

    private void resetSwipeRegions(DisplayController.Info info) {
        if (enableLog()) {
            Log.d(TAG, "clearing all regions except rotation: " + this.mCachedDisplayInfo.rotation);
        }
        CachedDisplayInfo cachedDisplayInfo = new CachedDisplayInfo(info.currentSize, info.rotation);
        this.mCachedDisplayInfo = cachedDisplayInfo;
        OrientationRectF orientationRectF = (OrientationRectF) this.mSwipeTouchRegions.get(cachedDisplayInfo);
        if (orientationRectF == null) {
            orientationRectF = createRegionForDisplay(info);
        }
        this.mSwipeTouchRegions.clear();
        this.mSwipeTouchRegions.put(this.mCachedDisplayInfo, orientationRectF);
        updateAssistantRegions(orientationRectF);
    }

    private void updateAssistantRegions(OrientationRectF orientationRectF) {
        int navbarSize = getNavbarSize("navigation_bar_gesture_height");
        int dimensionPixelSize = this.mResources.getDimensionPixelSize(R.dimen.gestures_assistant_width);
        float max = Math.max(navbarSize, this.mContractInfo.getWindowCornerRadius());
        RectF rectF = this.mAssistantLeftRegion;
        RectF rectF2 = this.mAssistantRightRegion;
        float f4 = ((RectF) orientationRectF).bottom;
        rectF2.bottom = f4;
        rectF.bottom = f4;
        float f5 = ((RectF) orientationRectF).bottom - max;
        rectF2.top = f5;
        rectF.top = f5;
        rectF.left = 0.0f;
        float f6 = dimensionPixelSize;
        rectF.right = f6;
        rectF2.right = ((RectF) orientationRectF).right;
        rectF2.left = ((RectF) orientationRectF).right - f6;
    }

    public void createOrAddTouchRegion(DisplayController.Info info) {
        Point point = info.currentSize;
        int i4 = info.rotation;
        CachedDisplayInfo cachedDisplayInfo = new CachedDisplayInfo(point, i4);
        this.mCachedDisplayInfo = cachedDisplayInfo;
        int i5 = this.mQuickStepStartingRotation;
        if (i5 > -1 && i4 == i5) {
            resetSwipeRegions(info);
        } else if (((OrientationRectF) this.mSwipeTouchRegions.get(cachedDisplayInfo)) != null) {
        } else {
            if (this.mEnableMultipleRegions) {
                this.mSwipeTouchRegions.put(this.mCachedDisplayInfo, createRegionForDisplay(info));
            } else {
                resetSwipeRegions(info);
            }
        }
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("OrientationTouchTransformerState: ");
        printWriter.println("  currentActiveRotation=" + getCurrentActiveRotation());
        printWriter.println("  lastTouchedRegion=" + this.mLastRectTouched);
        printWriter.println("  multipleRegionsEnabled=" + this.mEnableMultipleRegions);
        StringBuilder sb = new StringBuilder("  currentTouchableRotations=");
        for (CachedDisplayInfo cachedDisplayInfo : this.mSwipeTouchRegions.keySet()) {
            sb.append((OrientationRectF) this.mSwipeTouchRegions.get(cachedDisplayInfo));
            sb.append(" ");
        }
        printWriter.println(sb.toString());
        printWriter.println("  mNavBarGesturalHeight=" + this.mNavBarGesturalHeight);
        printWriter.println("  mNavBarLargerGesturalHeight=" + this.mNavBarLargerGesturalHeight);
        printWriter.println("  mOneHandedModeRegion=" + this.mOneHandedModeRegion);
    }

    public void enableMultipleRegions(boolean z4, DisplayController.Info info) {
        boolean z5 = z4 && this.mMode != NavigationMode.TWO_BUTTONS;
        this.mEnableMultipleRegions = z5;
        if (z5) {
            this.mQuickStepStartingRotation = info.rotation;
        } else {
            this.mActiveTouchRotation = 0;
            this.mQuickStepStartingRotation = -1;
        }
        resetSwipeRegions(info);
    }

    public int getCurrentActiveRotation() {
        return this.mActiveTouchRotation;
    }

    public int getQuickStepStartingRotation() {
        return this.mQuickStepStartingRotation;
    }

    public void setGesturalHeight(int i4, DisplayController.Info info, Resources resources) {
        if (this.mNavBarGesturalHeight == i4) {
            return;
        }
        this.mNavBarGesturalHeight = i4;
        refreshTouchRegion(info, resources);
    }

    public void setNavigationMode(NavigationMode navigationMode, DisplayController.Info info, Resources resources) {
        if (enableLog()) {
            Log.d(TAG, "setNavigationMode new: " + navigationMode + " oldMode: " + this.mMode + " " + this);
        }
        if (this.mMode == navigationMode) {
            return;
        }
        this.mMode = navigationMode;
        refreshTouchRegion(info, resources);
    }

    public void setSingleActiveRegion(DisplayController.Info info) {
        this.mActiveTouchRotation = info.rotation;
        resetSwipeRegions(info);
    }

    public boolean touchInAssistantRegion(MotionEvent motionEvent) {
        return this.mAssistantLeftRegion.contains(motionEvent.getX(), motionEvent.getY()) || this.mAssistantRightRegion.contains(motionEvent.getX(), motionEvent.getY());
    }

    public boolean touchInOneHandedModeRegion(MotionEvent motionEvent) {
        return this.mOneHandedModeRegion.contains(motionEvent.getX(), motionEvent.getY());
    }

    public boolean touchInValidSwipeRegions(float f4, float f5) {
        if (enableLog()) {
            Log.d(TAG, "touchInValidSwipeRegions " + f4 + "," + f5 + " in " + this.mLastRectTouched);
        }
        OrientationRectF orientationRectF = this.mLastRectTouched;
        if (orientationRectF != null) {
            return orientationRectF.contains(f4, f5);
        }
        return false;
    }

    public void transform(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    OrientationRectF orientationRectF = this.mLastRectTouched;
                    if (orientationRectF == null) {
                        return;
                    }
                    if (!TaskAnimationManager.SHELL_TRANSITIONS_ROTATION) {
                        orientationRectF.applyTransformFromRotation(motionEvent, this.mCachedDisplayInfo.rotation, true);
                        return;
                    } else if (motionEvent.getSurfaceRotation() != this.mActiveTouchRotation) {
                        OrientationRectF orientationRectF2 = this.mLastRectTouched;
                        int surfaceRotation = this.mActiveTouchRotation - motionEvent.getSurfaceRotation();
                        if (surfaceRotation < 0) {
                            surfaceRotation += 4;
                        }
                        orientationRectF2.applyTransform(motionEvent, surfaceRotation, true);
                        return;
                    } else {
                        return;
                    }
                } else if (actionMasked != 3) {
                    if (actionMasked != 5) {
                        return;
                    }
                }
            }
            OrientationRectF orientationRectF3 = this.mLastRectTouched;
            if (orientationRectF3 == null) {
                return;
            }
            if (!TaskAnimationManager.SHELL_TRANSITIONS_ROTATION) {
                orientationRectF3.applyTransformFromRotation(motionEvent, this.mCachedDisplayInfo.rotation, true);
            } else if (motionEvent.getSurfaceRotation() != this.mActiveTouchRotation) {
                OrientationRectF orientationRectF4 = this.mLastRectTouched;
                int surfaceRotation2 = this.mActiveTouchRotation - motionEvent.getSurfaceRotation();
                if (surfaceRotation2 < 0) {
                    surfaceRotation2 += 4;
                }
                orientationRectF4.applyTransform(motionEvent, surfaceRotation2, true);
            }
            this.mLastRectTouched = null;
            return;
        }
        if (enableLog()) {
            Log.d(TAG, "ACTION_DOWN mLastRectTouched: " + this.mLastRectTouched);
        }
        if (this.mLastRectTouched != null) {
            return;
        }
        for (OrientationRectF orientationRectF5 : this.mSwipeTouchRegions.values()) {
            if (enableLog()) {
                Log.d(TAG, "ACTION_DOWN rect: " + orientationRectF5);
            }
            if (orientationRectF5 != null && orientationRectF5.applyTransformFromRotation(motionEvent, this.mCachedDisplayInfo.rotation, false)) {
                this.mLastRectTouched = orientationRectF5;
                int rotation = orientationRectF5.getRotation();
                this.mActiveTouchRotation = rotation;
                if (this.mEnableMultipleRegions && this.mCachedDisplayInfo.rotation == rotation) {
                    this.mQuickStepStartingRotation = this.mLastRectTouched.getRotation();
                    resetSwipeRegions();
                }
                if (enableLog()) {
                    Log.d(TAG, "set active region: " + orientationRectF5);
                    return;
                }
                return;
            }
        }
    }

    private void resetSwipeRegions() {
        OrientationRectF orientationRectF = (OrientationRectF) this.mSwipeTouchRegions.get(this.mCachedDisplayInfo);
        this.mSwipeTouchRegions.clear();
        if (orientationRectF != null) {
            this.mSwipeTouchRegions.put(this.mCachedDisplayInfo, orientationRectF);
            updateAssistantRegions(orientationRectF);
        }
    }
}
