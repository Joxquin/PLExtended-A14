package com.android.launcher3.folder;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import com.android.launcher3.ExtendedEditText;
/* loaded from: classes.dex */
public class FolderNameEditText extends ExtendedEditText {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f4595d = 0;

    /* loaded from: classes.dex */
    final class FolderNameEditTextInputConnection extends InputConnectionWrapper {
        public FolderNameEditTextInputConnection(InputConnection inputConnection) {
            super(inputConnection, true);
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public final boolean setComposingText(CharSequence charSequence, int i4) {
            FolderNameEditText folderNameEditText = FolderNameEditText.this;
            int i5 = FolderNameEditText.f4595d;
            folderNameEditText.getClass();
            return super.setComposingText(charSequence, i4);
        }
    }

    public FolderNameEditText(Context context) {
        super(context);
    }

    @Override // android.widget.TextView
    public final void onCommitCompletion(CompletionInfo completionInfo) {
        setText(completionInfo.getText());
        setSelection(completionInfo.getText().length());
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return new FolderNameEditTextInputConnection(super.onCreateInputConnection(editorInfo));
    }

    @Override // android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
    }

    @Override // com.android.launcher3.ExtendedEditText
    public final void reset() {
        View focusSearch;
        super.reset();
        if (isFocused() && (focusSearch = focusSearch(130)) != null) {
            focusSearch.requestFocus();
        }
        hideKeyboard();
    }

    public FolderNameEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FolderNameEditText(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
