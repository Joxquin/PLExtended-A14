package com.android.launcher3.allapps.search;

import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.SuggestionSpan;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.search.SearchAlgorithm;
import com.android.launcher3.search.SearchCallback;
import com.android.launcher3.views.ActivityContext;
/* loaded from: classes.dex */
public class AllAppsSearchBarController implements TextWatcher, TextView.OnEditorActionListener, ExtendedEditText.OnBackKeyListener, View.OnFocusChangeListener {
    protected SearchCallback mCallback;
    protected ExtendedEditText mInput;
    protected ActivityContext mLauncher;
    protected String mQuery;
    protected SearchAlgorithm mSearchAlgorithm;
    private String[] mTextConversions;

    public static String[] extractTextConversions(CharSequence charSequence) {
        if (charSequence instanceof SpannableStringBuilder) {
            SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) charSequence;
            SuggestionSpan[] suggestionSpanArr = (SuggestionSpan[]) spannableStringBuilder.getSpans(0, charSequence.length(), SuggestionSpan.class);
            if (suggestionSpanArr == null || suggestionSpanArr.length <= 0) {
                return null;
            }
            spannableStringBuilder.removeSpan(suggestionSpanArr[0]);
            return suggestionSpanArr[0].getSuggestions();
        }
        return null;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        String obj = editable.toString();
        this.mQuery = obj;
        if (obj.isEmpty()) {
            this.mSearchAlgorithm.cancel(true);
            this.mCallback.clearSearchResult();
            return;
        }
        this.mSearchAlgorithm.cancel(false);
        this.mSearchAlgorithm.doSearch(this.mQuery, this.mTextConversions, this.mCallback);
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
    }

    public final void initialize(SearchAlgorithm searchAlgorithm, ExtendedEditText extendedEditText, ActivityContext activityContext, SearchCallback searchCallback) {
        this.mCallback = searchCallback;
        this.mLauncher = activityContext;
        this.mInput = extendedEditText;
        extendedEditText.addTextChangedListener(this);
        this.mInput.setOnEditorActionListener(this);
        this.mInput.setOnBackKeyListener(this);
        this.mInput.addOnFocusChangeListener(this);
        this.mSearchAlgorithm = searchAlgorithm;
    }

    @Override // com.android.launcher3.ExtendedEditText.OnBackKeyListener
    public final boolean onBackKey() {
        if (Utilities.trim(this.mInput.getEditableText().toString()).isEmpty()) {
            this.mCallback.clearSearchResult();
            this.mInput.reset();
            this.mQuery = null;
            this.mInput.removeOnFocusChangeListener(this);
            return true;
        }
        return false;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i4, KeyEvent keyEvent) {
        if (i4 == 3 || i4 == 2) {
            return this.mLauncher.getAppsView().getMainAdapterProvider().launchHighlightedItem();
        }
        return false;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z4) {
        if (z4 || FeatureFlags.ENABLE_DEVICE_SEARCH.get()) {
            return;
        }
        this.mInput.hideKeyboard();
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
        this.mTextConversions = extractTextConversions(charSequence);
    }

    public final void refreshSearchResult() {
        if (TextUtils.isEmpty(this.mQuery)) {
            return;
        }
        this.mSearchAlgorithm.cancel(false);
        this.mSearchAlgorithm.doSearch(this.mQuery, this.mCallback);
    }
}
