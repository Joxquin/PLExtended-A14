package com.android.launcher3;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.DragEvent;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.android.launcher3.logging.KeyboardStateManager;
import com.android.launcher3.views.ActivityContext;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class ExtendedEditText extends EditText {
    private OnBackKeyListener mBackKeyListener;
    private boolean mForceDisableSuggestions;
    private final Set mOnFocusChangeListeners;

    /* loaded from: classes.dex */
    public interface OnBackKeyListener {
        boolean onBackKey();
    }

    public ExtendedEditText(Context context) {
        super(context);
        this.mOnFocusChangeListeners = new HashSet();
        this.mForceDisableSuggestions = false;
    }

    public final void addOnFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.mOnFocusChangeListeners.add(onFocusChangeListener);
    }

    public final void dispatchBackKey() {
        hideKeyboard();
        OnBackKeyListener onBackKeyListener = this.mBackKeyListener;
        if (onBackKeyListener != null) {
            onBackKeyListener.onBackKey();
        }
    }

    public final void forceDisableSuggestions() {
        this.mForceDisableSuggestions = true;
    }

    public void hideKeyboard() {
        ((ActivityContext) ActivityContext.lookupContext(getContext())).hideKeyboard();
        clearFocus();
    }

    @Override // android.widget.TextView
    public boolean isSuggestionsEnabled() {
        return !this.mForceDisableSuggestions && super.isSuggestionsEnabled();
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onDragEvent(DragEvent dragEvent) {
        return false;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z4, int i4, Rect rect) {
        super.onFocusChanged(z4, i4, rect);
        for (View.OnFocusChangeListener onFocusChangeListener : this.mOnFocusChangeListeners) {
            onFocusChangeListener.onFocusChange(this, z4);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onKeyPreIme(int i4, KeyEvent keyEvent) {
        OnBackKeyListener onBackKeyListener;
        return (i4 == 4 && keyEvent.getAction() == 1 && (onBackKeyListener = this.mBackKeyListener) != null) ? onBackKeyListener.onBackKey() : super.onKeyPreIme(i4, keyEvent);
    }

    public final void removeOnFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.mOnFocusChangeListeners.remove(onFocusChangeListener);
    }

    public void reset() {
        if (TextUtils.isEmpty(getText())) {
            return;
        }
        setText("");
    }

    public void restoreToFocusedState() {
    }

    public void saveFocusedStateAndUpdateToUnfocusedState() {
    }

    public final void setOnBackKeyListener(OnBackKeyListener onBackKeyListener) {
        this.mBackKeyListener = onBackKeyListener;
    }

    public final void showKeyboard(boolean z4) {
        ((ActivityContext) ActivityContext.lookupContext(getContext())).getStatsLogManager().keyboardStateManager().setKeyboardState(KeyboardStateManager.KeyboardState.SHOW);
        if (!z4 || requestFocus()) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService(InputMethodManager.class);
            if (inputMethodManager != null) {
                inputMethodManager.showSoftInput(this, 1);
            } else {
                Log.w("ExtendedEditText", "Failed to retrieve InputMethodManager from the system.");
            }
        }
    }

    public ExtendedEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mOnFocusChangeListeners = new HashSet();
        this.mForceDisableSuggestions = false;
    }

    public ExtendedEditText(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mOnFocusChangeListeners = new HashSet();
        this.mForceDisableSuggestions = false;
    }
}
