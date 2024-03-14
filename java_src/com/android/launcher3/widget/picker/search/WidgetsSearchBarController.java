package com.android.launcher3.widget.picker.search;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageButton;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.search.SearchAlgorithm;
import com.android.launcher3.search.SearchCallback;
import com.android.launcher3.widget.picker.WidgetsFullSheet;
import com.android.launcher3.widget.picker.search.WidgetsSearchBarController;
import com.google.android.apps.nexuslauncher.NexusLauncherEditText;
import e2.h;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class WidgetsSearchBarController implements TextWatcher, SearchCallback, ExtendedEditText.OnBackKeyListener, View.OnKeyListener {
    protected ImageButton mCancelButton;
    protected ExtendedEditText mInput;
    protected String mQuery;
    protected SearchAlgorithm mSearchAlgorithm;
    protected SearchModeListener mSearchModeListener;

    public WidgetsSearchBarController(h hVar, NexusLauncherEditText nexusLauncherEditText, ImageButton imageButton, SearchModeListener searchModeListener) {
        this.mSearchAlgorithm = hVar;
        this.mInput = nexusLauncherEditText;
        nexusLauncherEditText.addTextChangedListener(this);
        this.mInput.setOnBackKeyListener(this);
        this.mInput.setOnKeyListener(this);
        this.mCancelButton = imageButton;
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: i1.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WidgetsSearchBarController.this.clearSearchResult();
            }
        });
        this.mSearchModeListener = searchModeListener;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        String obj = editable.toString();
        this.mQuery = obj;
        if (obj.isEmpty()) {
            this.mSearchAlgorithm.cancel(true);
            ((WidgetsFullSheet) this.mSearchModeListener).exitSearchMode();
            this.mCancelButton.setVisibility(8);
            return;
        }
        this.mSearchAlgorithm.cancel(false);
        ((WidgetsFullSheet) this.mSearchModeListener).enterSearchMode();
        this.mSearchAlgorithm.doSearch(this.mQuery, this);
        this.mCancelButton.setVisibility(0);
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
    }

    public final void clearFocus() {
        this.mInput.clearFocus();
        this.mInput.hideKeyboard();
    }

    @Override // com.android.launcher3.search.SearchCallback
    public final void clearSearchResult() {
        this.mInput.setText("");
    }

    @Override // com.android.launcher3.ExtendedEditText.OnBackKeyListener
    public final boolean onBackKey() {
        clearFocus();
        return true;
    }

    public final void onDestroy() {
        this.mSearchAlgorithm.destroy();
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i4, KeyEvent keyEvent) {
        if (i4 == 66 && keyEvent.getAction() == 1) {
            clearFocus();
            return true;
        }
        return false;
    }

    @Override // com.android.launcher3.search.SearchCallback
    public final void onSearchResult(String str, ArrayList arrayList) {
        this.mSearchModeListener.onSearchResults(arrayList);
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
    }
}
