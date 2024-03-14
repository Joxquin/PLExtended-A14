package com.android.launcher3.model.data;

import L.f;
import android.os.Process;
import android.text.TextUtils;
import com.android.launcher3.Utilities;
import com.android.launcher3.folder.FolderNameInfos;
import com.android.launcher3.logger.LauncherAtom$Attribute;
import com.android.launcher3.logger.LauncherAtom$FolderIcon;
import com.android.launcher3.logger.LauncherAtom$FromState;
import com.android.launcher3.logger.LauncherAtom$ItemInfo;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.util.ContentWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.OptionalInt;
import java.util.function.IntPredicate;
import java.util.stream.IntStream;
/* loaded from: classes.dex */
public final class FolderInfo extends ItemInfo {
    public ArrayList contents = new ArrayList();
    private ArrayList mListeners = new ArrayList();
    public int options;
    public FolderNameInfos suggestedFolderNames;

    /* loaded from: classes.dex */
    public interface FolderListener {
        void onAdd(int i4, WorkspaceItemInfo workspaceItemInfo);

        void onItemsChanged(boolean z4);

        void onRemove(List list);
    }

    /* loaded from: classes.dex */
    public enum LabelState {
        UNLABELED(LauncherAtom$Attribute.UNLABELED),
        EMPTY(LauncherAtom$Attribute.EMPTY_LABEL),
        SUGGESTED(LauncherAtom$Attribute.SUGGESTED_LABEL),
        MANUAL(LauncherAtom$Attribute.MANUAL_LABEL);
        
        private final LauncherAtom$Attribute mLogAttribute;

        LabelState(LauncherAtom$Attribute launcherAtom$Attribute) {
            this.mLogAttribute = launcherAtom$Attribute;
        }
    }

    public FolderInfo() {
        this.itemType = 2;
        this.user = Process.myUserHandle();
    }

    public final void add(int i4, WorkspaceItemInfo workspaceItemInfo, boolean z4) {
        int boundToRange = Utilities.boundToRange(i4, 0, this.contents.size());
        this.contents.add(boundToRange, workspaceItemInfo);
        for (int i5 = 0; i5 < this.mListeners.size(); i5++) {
            ((FolderListener) this.mListeners.get(i5)).onAdd(boundToRange, workspaceItemInfo);
        }
        for (int i6 = 0; i6 < this.mListeners.size(); i6++) {
            ((FolderListener) this.mListeners.get(i6)).onItemsChanged(z4);
        }
    }

    public final void addListener(FolderListener folderListener) {
        this.mListeners.add(folderListener);
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final LauncherAtom$ItemInfo buildProto(FolderInfo folderInfo) {
        LauncherAtom$FolderIcon.Builder newBuilder = LauncherAtom$FolderIcon.newBuilder();
        newBuilder.setCardinality(this.contents.size());
        if (LabelState.SUGGESTED.equals(getLabelState())) {
            newBuilder.setLabelInfo(this.title.toString());
        }
        LauncherAtom$ItemInfo.Builder defaultItemInfoBuilder = getDefaultItemInfoBuilder();
        defaultItemInfoBuilder.setFolderIcon(newBuilder);
        defaultItemInfoBuilder.setRank(this.rank);
        defaultItemInfoBuilder.addItemAttributes(getLabelState().mLogAttribute);
        defaultItemInfoBuilder.setContainerInfo(getContainerInfo());
        return (LauncherAtom$ItemInfo) defaultItemInfoBuilder.build();
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final String dumpProperties() {
        return String.format("%s; labelState=%s", super.dumpProperties(), getLabelState());
    }

    public final OptionalInt getAcceptedSuggestionIndex() {
        CharSequence charSequence = this.title;
        f.b(charSequence, "Expected valid folder label, but found null");
        final String charSequence2 = charSequence.toString();
        FolderNameInfos folderNameInfos = this.suggestedFolderNames;
        if (folderNameInfos == null || !folderNameInfos.hasSuggestions()) {
            return OptionalInt.empty();
        }
        final CharSequence[] labels = this.suggestedFolderNames.getLabels();
        return IntStream.range(0, labels.length).filter(new IntPredicate() { // from class: O0.b
            @Override // java.util.function.IntPredicate
            public final boolean test(int i4) {
                CharSequence[] charSequenceArr = labels;
                return !TextUtils.isEmpty(charSequenceArr[i4]) && charSequence2.equalsIgnoreCase(charSequenceArr[i4].toString());
            }
        }).sequential().findFirst();
    }

    public final LauncherAtom$FromState getFromLabelState() {
        int ordinal = getLabelState().ordinal();
        return ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? LauncherAtom$FromState.FROM_STATE_UNSPECIFIED : LauncherAtom$FromState.FROM_CUSTOM : LauncherAtom$FromState.FROM_SUGGESTED : LauncherAtom$FromState.FROM_EMPTY;
    }

    public final LabelState getLabelState() {
        CharSequence charSequence = this.title;
        if (charSequence == null) {
            return LabelState.UNLABELED;
        }
        if (charSequence.length() == 0) {
            return LabelState.EMPTY;
        }
        return (this.options & 8) != 0 ? LabelState.MANUAL : LabelState.SUGGESTED;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final ItemInfo makeShallowCopy() {
        FolderInfo folderInfo = new FolderInfo();
        folderInfo.copyFrom(this);
        folderInfo.contents = this.contents;
        return folderInfo;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final void onAddToDatabase(ContentWriter contentWriter) {
        super.onAddToDatabase(contentWriter);
        contentWriter.put(this.title);
        contentWriter.put("options", Integer.valueOf(this.options));
    }

    public final void removeAll(List list, boolean z4) {
        this.contents.removeAll(list);
        for (int i4 = 0; i4 < this.mListeners.size(); i4++) {
            ((FolderListener) this.mListeners.get(i4)).onRemove(list);
        }
        for (int i5 = 0; i5 < this.mListeners.size(); i5++) {
            ((FolderListener) this.mListeners.get(i5)).onItemsChanged(z4);
        }
    }

    public final void removeListener(FolderListener folderListener) {
        this.mListeners.remove(folderListener);
    }

    public final void setOption(boolean z4, ModelWriter modelWriter) {
        int i4 = this.options;
        if (z4) {
            this.options = 4 | i4;
        } else {
            this.options = (-5) & i4;
        }
        if (modelWriter == null || i4 == this.options) {
            return;
        }
        modelWriter.updateItemInDatabase(this);
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final void setTitle(CharSequence charSequence, ModelWriter modelWriter) {
        if (TextUtils.isEmpty(charSequence) && this.title == null) {
            return;
        }
        if (charSequence == null || !charSequence.equals(this.title)) {
            this.title = charSequence;
            LabelState labelState = LabelState.MANUAL;
            if ((charSequence == null ? LabelState.UNLABELED : charSequence.length() == 0 ? LabelState.EMPTY : getAcceptedSuggestionIndex().isPresent() ? LabelState.SUGGESTED : labelState).equals(labelState)) {
                this.options |= 8;
            } else {
                this.options &= -9;
            }
            if (modelWriter != null) {
                modelWriter.updateItemInDatabase(this);
            }
        }
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final LauncherAtom$ItemInfo buildProto() {
        return buildProto(null);
    }
}
