package com.android.launcher3.anim;

import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import com.android.launcher3.Utilities;
import java.util.List;
/* loaded from: classes.dex */
public final class KeyboardInsetAnimationCallback extends WindowInsetsAnimation.Callback {
    private float mInitialTranslation;
    private KeyboardTranslationState mKeyboardTranslationState;
    private float mTerminalTranslation;
    private final View mView;

    /* loaded from: classes.dex */
    public interface KeyboardInsetListener {
        default void onKeyboardAlphaChanged(float f4) {
        }

        void onTranslationEnd();

        void onTranslationStart();
    }

    /* loaded from: classes.dex */
    public enum KeyboardTranslationState {
        SYSTEM,
        MANUAL_PREPARED,
        MANUAL_ONGOING
    }

    public KeyboardInsetAnimationCallback(View view) {
        super(0);
        this.mKeyboardTranslationState = KeyboardTranslationState.SYSTEM;
        this.mView = view;
    }

    public final KeyboardTranslationState getKeyboardTranslationState() {
        return this.mKeyboardTranslationState;
    }

    @Override // android.view.WindowInsetsAnimation.Callback
    public final void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
        View view = this.mView;
        if (view instanceof KeyboardInsetListener) {
            ((KeyboardInsetListener) view).onTranslationEnd();
        }
        this.mKeyboardTranslationState = KeyboardTranslationState.SYSTEM;
    }

    @Override // android.view.WindowInsetsAnimation.Callback
    public final void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
        this.mKeyboardTranslationState = KeyboardTranslationState.MANUAL_PREPARED;
        this.mInitialTranslation = this.mView.getTranslationY();
    }

    @Override // android.view.WindowInsetsAnimation.Callback
    public final WindowInsets onProgress(WindowInsets windowInsets, List list) {
        if (list.size() == 0) {
            this.mView.setTranslationY(this.mInitialTranslation);
            return windowInsets;
        }
        WindowInsetsAnimation windowInsetsAnimation = (WindowInsetsAnimation) list.get(0);
        if (windowInsetsAnimation.getDurationMillis() > -1) {
            float interpolatedFraction = windowInsetsAnimation.getInterpolatedFraction();
            View view = this.mView;
            float f4 = this.mInitialTranslation;
            float f5 = this.mTerminalTranslation;
            String[] strArr = Utilities.EMPTY_STRING_ARRAY;
            view.setTranslationY(((f5 - f4) * interpolatedFraction) + f4);
        } else {
            int i4 = -windowInsets.getInsets(WindowInsets.Type.ime()).bottom;
            if (this.mView.getParent() instanceof View) {
                i4 = (int) (i4 - ((View) this.mView.getParent()).getTranslationY());
            }
            this.mView.setTranslationY(i4);
        }
        View view2 = this.mView;
        if (view2 instanceof KeyboardInsetListener) {
            ((KeyboardInsetListener) view2).onKeyboardAlphaChanged(windowInsetsAnimation.getAlpha());
        }
        return windowInsets;
    }

    @Override // android.view.WindowInsetsAnimation.Callback
    public final WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
        this.mTerminalTranslation = this.mView.getTranslationY();
        this.mView.setTranslationY(this.mInitialTranslation);
        this.mKeyboardTranslationState = KeyboardTranslationState.MANUAL_ONGOING;
        View view = this.mView;
        if (view instanceof KeyboardInsetListener) {
            ((KeyboardInsetListener) view).onTranslationStart();
        }
        return super.onStart(windowInsetsAnimation, bounds);
    }
}
