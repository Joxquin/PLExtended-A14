package androidx.slice.widget;

import B.c;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.slice.SliceItem;
import com.android.systemui.shared.R;
import f0.C0847n;
import f0.RunnableC0848o;
/* loaded from: classes.dex */
public class RemoteInputView extends LinearLayout implements View.OnClickListener, TextWatcher {

    /* renamed from: k  reason: collision with root package name */
    public static final Object f4107k = new Object();

    /* renamed from: d  reason: collision with root package name */
    public RemoteEditText f4108d;

    /* renamed from: e  reason: collision with root package name */
    public ImageButton f4109e;

    /* renamed from: f  reason: collision with root package name */
    public ProgressBar f4110f;

    /* renamed from: g  reason: collision with root package name */
    public SliceItem f4111g;

    /* renamed from: h  reason: collision with root package name */
    public RemoteInput[] f4112h;

    /* renamed from: i  reason: collision with root package name */
    public RemoteInput f4113i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f4114j;

    /* loaded from: classes.dex */
    public class RemoteEditText extends EditText {

        /* renamed from: d  reason: collision with root package name */
        public final Drawable f4115d;

        /* renamed from: e  reason: collision with root package name */
        public RemoteInputView f4116e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f4117f;

        public RemoteEditText(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f4115d = getBackground();
        }

        public final void a() {
            if (this.f4116e != null || isTemporarilyDetached()) {
                isTemporarilyDetached();
            } else if (isFocusable() && isEnabled()) {
                b(false);
                RemoteInputView remoteInputView = this.f4116e;
                if (remoteInputView != null) {
                    remoteInputView.setVisibility(4);
                }
                this.f4117f = false;
            }
        }

        public final void b(boolean z4) {
            setFocusableInTouchMode(z4);
            setFocusable(z4);
            setCursorVisible(z4);
            if (!z4) {
                setBackground(null);
                return;
            }
            requestFocus();
            setBackground(this.f4115d);
        }

        @Override // android.widget.TextView, android.view.View
        public final void getFocusedRect(Rect rect) {
            super.getFocusedRect(rect);
            rect.top = getScrollY();
            rect.bottom = (getBottom() - getTop()) + getScrollY();
        }

        @Override // android.widget.TextView
        public final void onCommitCompletion(CompletionInfo completionInfo) {
            clearComposingText();
            setText(completionInfo.getText());
            setSelection(getText().length());
        }

        @Override // android.widget.TextView, android.view.View
        public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f4117f && onCreateInputConnection != null) {
                Context context = getContext();
                Object obj = c.f105a;
                InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService(InputMethodManager.class);
                if (inputMethodManager != null) {
                    post(new RunnableC0848o(this, inputMethodManager));
                }
            }
            return onCreateInputConnection;
        }

        @Override // android.widget.TextView, android.view.View
        public final void onFocusChanged(boolean z4, int i4, Rect rect) {
            super.onFocusChanged(z4, i4, rect);
            if (z4) {
                return;
            }
            a();
        }

        @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
        public final boolean onKeyDown(int i4, KeyEvent keyEvent) {
            if (i4 == 4) {
                return true;
            }
            return super.onKeyDown(i4, keyEvent);
        }

        @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
        public final boolean onKeyUp(int i4, KeyEvent keyEvent) {
            if (i4 == 4) {
                a();
                return true;
            }
            return super.onKeyUp(i4, keyEvent);
        }

        @Override // android.widget.TextView, android.view.View
        public final void onVisibilityChanged(View view, int i4) {
            super.onVisibilityChanged(view, i4);
            if (isShown()) {
                return;
            }
            a();
        }

        @Override // android.widget.TextView
        public final void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
            super.setCustomSelectionActionModeCallback(callback);
        }
    }

    public RemoteInputView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public final void a() {
        this.f4114j = true;
        this.f4108d.getText().clear();
        this.f4108d.setEnabled(true);
        this.f4109e.setVisibility(0);
        this.f4110f.setVisibility(4);
        c();
        setVisibility(4);
        this.f4114j = false;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        c();
    }

    public final void b() {
        Bundle bundle = new Bundle();
        bundle.putString(this.f4113i.getResultKey(), this.f4108d.getText().toString());
        Intent addFlags = new Intent().addFlags(268435456);
        RemoteInput.addResultsToIntent(this.f4112h, addFlags, bundle);
        this.f4108d.setEnabled(false);
        this.f4109e.setVisibility(4);
        this.f4110f.setVisibility(0);
        this.f4108d.f4117f = false;
        try {
            this.f4111g.a(getContext(), addFlags);
            a();
        } catch (PendingIntent.CanceledException e4) {
            Log.i("RemoteInput", "Unable to send remote input result", e4);
            Toast.makeText(getContext(), "Failure sending pending intent for inline reply :(", 0).show();
            a();
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
    }

    public final void c() {
        this.f4109e.setEnabled(this.f4108d.getText().length() != 0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchFinishTemporaryDetach() {
        if (isAttachedToWindow()) {
            RemoteEditText remoteEditText = this.f4108d;
            attachViewToParent(remoteEditText, 0, remoteEditText.getLayoutParams());
        } else {
            removeDetachedView(this.f4108d, false);
        }
        super.dispatchFinishTemporaryDetach();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchStartTemporaryDetach() {
        super.dispatchStartTemporaryDetach();
        detachViewFromParent(this.f4108d);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view == this.f4109e) {
            b();
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f4110f = (ProgressBar) findViewById(R.id.remote_input_progress);
        ImageButton imageButton = (ImageButton) findViewById(R.id.remote_input_send);
        this.f4109e = imageButton;
        imageButton.setOnClickListener(this);
        RemoteEditText remoteEditText = (RemoteEditText) getChildAt(0);
        this.f4108d = remoteEditText;
        remoteEditText.setOnEditorActionListener(new C0847n(this));
        this.f4108d.addTextChangedListener(this);
        this.f4108d.b(false);
        this.f4108d.f4116e = this;
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestSendAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        if (this.f4114j && view == this.f4108d) {
            return false;
        }
        return super.onRequestSendAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }
}
