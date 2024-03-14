package com.android.launcher3.model;

import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.celllayout.CellPosMapper;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.provider.LauncherDbUtils;
import com.android.launcher3.util.ContentWriter;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.widget.LauncherWidgetHolder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;
/* loaded from: classes.dex */
public final class ModelWriter {
    private final BgDataModel mBgDataModel;
    private final CellPosMapper mCellPosMapper;
    private final Context mContext;
    private final boolean mHasVerticalHotseat;
    private final LauncherModel mModel;
    private final BgDataModel.Callbacks mOwner;
    private boolean mPreparingToUndo;
    private final boolean mVerifyChanges;
    private final List mDeleteRunnables = new ArrayList();
    private final LooperExecutor mUiExecutor = Executors.MAIN_EXECUTOR;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.model.ModelWriter$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends ModelTask {
        final /* synthetic */ Runnable val$r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ModelWriter modelWriter, Runnable runnable) {
            super();
            this.val$r = runnable;
        }

        @Override // com.android.launcher3.model.ModelWriter.ModelTask
        public final void runImpl() {
            this.val$r.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public abstract class ModelTask implements Runnable {
        private final int mLoadId;

        public ModelTask() {
            this.mLoadId = ModelWriter.this.mBgDataModel.lastLoadId;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.mLoadId != ModelWriter.this.mModel.getLastLoadId()) {
                Log.d("ModelWriter", "Model changed before the task could execute");
            } else {
                runImpl();
            }
        }

        public abstract void runImpl();
    }

    /* loaded from: classes.dex */
    public final class ModelVerifier {
        final int startId;

        public ModelVerifier() {
            this.startId = ModelWriter.this.mBgDataModel.lastBindId;
        }

        public final void verifyModel() {
            ModelWriter modelWriter = ModelWriter.this;
            if (modelWriter.mVerifyChanges && modelWriter.mModel.hasCallbacks()) {
                final int i4 = modelWriter.mBgDataModel.lastBindId;
                modelWriter.mUiExecutor.post(new Runnable() { // from class: com.android.launcher3.model.A0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ModelWriter.ModelVerifier modelVerifier = ModelWriter.ModelVerifier.this;
                        int i5 = i4;
                        ModelWriter modelWriter2 = ModelWriter.this;
                        if (modelWriter2.mBgDataModel.lastBindId <= i5 && i5 != modelVerifier.startId) {
                            modelWriter2.mModel.rebindCallbacks();
                        }
                    }
                });
            }
        }
    }

    /* loaded from: classes.dex */
    abstract class UpdateItemBaseRunnable extends ModelTask {
        private final StackTraceElement[] mStackTrace;
        private final ModelVerifier mVerifier;

        public UpdateItemBaseRunnable() {
            super();
            this.mVerifier = new ModelVerifier();
            this.mStackTrace = new Throwable().getStackTrace();
        }

        public final void updateItemArrays(int i4, ItemInfo itemInfo) {
            int i5;
            synchronized (ModelWriter.this.mBgDataModel) {
                ModelWriter.this.checkItemInfoLocked(i4, itemInfo, this.mStackTrace);
                int i6 = itemInfo.container;
                if (i6 != -100 && i6 != -101 && !ModelWriter.this.mBgDataModel.folders.containsKey(itemInfo.container)) {
                    Log.e("ModelWriter", "item: " + itemInfo + " container being set to: " + itemInfo.container + ", not in the list of folders");
                }
                ItemInfo itemInfo2 = (ItemInfo) ModelWriter.this.mBgDataModel.itemsIdMap.get(i4);
                if (itemInfo2 == null || !((i5 = itemInfo2.container) == -100 || i5 == -101)) {
                    ModelWriter.this.mBgDataModel.workspaceItems.remove(itemInfo2);
                } else {
                    int i7 = itemInfo2.itemType;
                    if ((i7 == 0 || i7 == 2 || i7 == 6 || i7 == 10) && !ModelWriter.this.mBgDataModel.workspaceItems.contains(itemInfo2)) {
                        ModelWriter.this.mBgDataModel.workspaceItems.add(itemInfo2);
                    }
                }
                this.mVerifier.verifyModel();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class UpdateItemRunnable extends UpdateItemBaseRunnable {
        private final ItemInfo mItem;
        private final int mItemId;
        private final Supplier mWriter;

        public UpdateItemRunnable(ItemInfo itemInfo, C0389s0 c0389s0) {
            super();
            this.mItem = itemInfo;
            this.mWriter = c0389s0;
            this.mItemId = itemInfo.id;
        }

        @Override // com.android.launcher3.model.ModelWriter.ModelTask
        public final void runImpl() {
            ModelWriter.this.mModel.getModelDbController().update("favorites", ((ContentWriter) this.mWriter.get()).getValues(ModelWriter.this.mContext), LauncherDbUtils.itemIdMatch(this.mItemId), null);
            updateItemArrays(this.mItemId, this.mItem);
        }
    }

    /* loaded from: classes.dex */
    final class UpdateItemsRunnable extends UpdateItemBaseRunnable {
        private final ArrayList mItems;
        private final ArrayList mValues;

        public UpdateItemsRunnable(ArrayList arrayList, ArrayList arrayList2) {
            super();
            this.mValues = arrayList2;
            this.mItems = arrayList;
        }

        @Override // com.android.launcher3.model.ModelWriter.ModelTask
        public final void runImpl() {
            try {
                LauncherDbUtils.SQLiteTransaction newTransaction = ModelWriter.this.mModel.getModelDbController().newTransaction();
                int size = this.mItems.size();
                for (int i4 = 0; i4 < size; i4++) {
                    ItemInfo itemInfo = (ItemInfo) this.mItems.get(i4);
                    int i5 = itemInfo.id;
                    ModelWriter.this.mModel.getModelDbController().update("favorites", (ContentValues) this.mValues.get(i4), LauncherDbUtils.itemIdMatch(i5), null);
                    updateItemArrays(i5, itemInfo);
                }
                newTransaction.commit();
                newTransaction.close();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public ModelWriter(Context context, LauncherModel launcherModel, BgDataModel bgDataModel, boolean z4, boolean z5, CellPosMapper cellPosMapper, BgDataModel.Callbacks callbacks) {
        this.mContext = context;
        this.mModel = launcherModel;
        this.mBgDataModel = bgDataModel;
        this.mHasVerticalHotseat = z4;
        this.mVerifyChanges = z5;
        this.mOwner = callbacks;
        this.mCellPosMapper = cellPosMapper;
    }

    public static /* synthetic */ void a(ModelWriter modelWriter, LauncherModel.CallbackTask callbackTask) {
        BgDataModel.Callbacks[] callbacks;
        for (BgDataModel.Callbacks callbacks2 : modelWriter.mModel.getCallbacks()) {
            if (callbacks2 != modelWriter.mOwner) {
                callbackTask.execute(callbacks2);
            }
        }
    }

    public static void b(ModelWriter modelWriter, FolderInfo folderInfo, ModelVerifier modelVerifier) {
        LauncherModel launcherModel = modelWriter.mModel;
        ModelDbController modelDbController = launcherModel.getModelDbController();
        modelDbController.delete("favorites", "container=" + folderInfo.id, null);
        ArrayList arrayList = folderInfo.contents;
        BgDataModel bgDataModel = modelWriter.mBgDataModel;
        Context context = modelWriter.mContext;
        bgDataModel.removeItem(context, arrayList);
        folderInfo.contents.clear();
        ModelDbController modelDbController2 = launcherModel.getModelDbController();
        modelDbController2.delete("favorites", "_id=" + folderInfo.id, null);
        ItemInfo[] itemInfoArr = {folderInfo};
        synchronized (bgDataModel) {
            bgDataModel.removeItem(context, Arrays.asList(itemInfoArr));
        }
        modelVerifier.verifyModel();
    }

    public static void c(ModelWriter modelWriter, ItemInfo itemInfo, StackTraceElement[] stackTraceElementArr, ModelVerifier modelVerifier) {
        ContentWriter contentWriter = new ContentWriter(modelWriter.mContext);
        itemInfo.onAddToDatabase(contentWriter);
        contentWriter.put("_id", Integer.valueOf(itemInfo.id));
        modelWriter.mModel.getModelDbController().insert("favorites", contentWriter.getValues(modelWriter.mContext));
        synchronized (modelWriter.mBgDataModel) {
            modelWriter.checkItemInfoLocked(itemInfo.id, itemInfo, stackTraceElementArr);
            BgDataModel bgDataModel = modelWriter.mBgDataModel;
            Context context = modelWriter.mContext;
            synchronized (bgDataModel) {
                bgDataModel.addItem(context, itemInfo, true, null);
            }
            modelVerifier.verifyModel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkItemInfoLocked(int i4, ItemInfo itemInfo, StackTraceElement[] stackTraceElementArr) {
        ItemInfo itemInfo2 = (ItemInfo) this.mBgDataModel.itemsIdMap.get(i4);
        if (itemInfo2 == null || itemInfo == itemInfo2) {
            return;
        }
        if ((itemInfo2 instanceof WorkspaceItemInfo) && (itemInfo instanceof WorkspaceItemInfo) && itemInfo2.title.toString().equals(itemInfo.title.toString()) && itemInfo2.getIntent().filterEquals(itemInfo.getIntent()) && itemInfo2.id == itemInfo.id && itemInfo2.itemType == itemInfo.itemType && itemInfo2.container == itemInfo.container && itemInfo2.screenId == itemInfo.screenId && itemInfo2.cellX == itemInfo.cellX && itemInfo2.cellY == itemInfo.cellY && itemInfo2.spanX == itemInfo.spanX && itemInfo2.spanY == itemInfo.spanY) {
            return;
        }
        StringBuilder sb = new StringBuilder("item: ");
        sb.append(itemInfo != null ? itemInfo.toString() : "null");
        sb.append("modelItem: ");
        sb.append(itemInfo2.toString());
        sb.append("Error: ItemInfo passed to checkItemInfo doesn't match original");
        RuntimeException runtimeException = new RuntimeException(sb.toString());
        if (stackTraceElementArr != null) {
            runtimeException.setStackTrace(stackTraceElementArr);
        }
        throw runtimeException;
    }

    public static void d(ModelWriter modelWriter, Collection collection, ModelVerifier modelVerifier) {
        modelWriter.getClass();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            ItemInfo itemInfo = (ItemInfo) it.next();
            modelWriter.mModel.getModelDbController().delete("favorites", LauncherDbUtils.itemIdMatch(itemInfo.id), null);
            ItemInfo[] itemInfoArr = {itemInfo};
            BgDataModel bgDataModel = modelWriter.mBgDataModel;
            Context context = modelWriter.mContext;
            synchronized (bgDataModel) {
                bgDataModel.removeItem(context, Arrays.asList(itemInfoArr));
            }
            modelVerifier.verifyModel();
        }
    }

    public static /* synthetic */ ContentWriter e(ModelWriter modelWriter, ItemInfo itemInfo) {
        ContentWriter contentWriter = new ContentWriter(modelWriter.mContext);
        contentWriter.put("container", Integer.valueOf(itemInfo.container));
        contentWriter.put("cellX", Integer.valueOf(itemInfo.cellX));
        contentWriter.put("cellY", Integer.valueOf(itemInfo.cellY));
        contentWriter.put("rank", Integer.valueOf(itemInfo.rank));
        contentWriter.put("screen", Integer.valueOf(itemInfo.screenId));
        return contentWriter;
    }

    private void enqueueDeleteRunnable(ModelTask modelTask) {
        if (this.mPreparingToUndo) {
            ((ArrayList) this.mDeleteRunnables).add(modelTask);
        } else {
            Executors.MODEL_EXECUTOR.execute(modelTask);
        }
    }

    public static /* synthetic */ ContentWriter f(ModelWriter modelWriter, ItemInfo itemInfo) {
        ContentWriter contentWriter = new ContentWriter(modelWriter.mContext);
        itemInfo.onAddToDatabase(contentWriter);
        return contentWriter;
    }

    public static /* synthetic */ ContentWriter g(ModelWriter modelWriter, ItemInfo itemInfo) {
        ContentWriter contentWriter = new ContentWriter(modelWriter.mContext);
        contentWriter.put("container", Integer.valueOf(itemInfo.container));
        contentWriter.put("cellX", Integer.valueOf(itemInfo.cellX));
        contentWriter.put("cellY", Integer.valueOf(itemInfo.cellY));
        contentWriter.put("rank", Integer.valueOf(itemInfo.rank));
        contentWriter.put("spanX", Integer.valueOf(itemInfo.spanX));
        contentWriter.put("spanY", Integer.valueOf(itemInfo.spanY));
        contentWriter.put("screen", Integer.valueOf(itemInfo.screenId));
        return contentWriter;
    }

    private void notifyOtherCallbacks(LauncherModel.CallbackTask callbackTask) {
        if (this.mOwner == null) {
            return;
        }
        this.mUiExecutor.execute(new RunnableC0395v0(1, this, callbackTask));
    }

    private void updateItemInfoProps(ItemInfo itemInfo, int i4, int i5, int i6, int i7) {
        CellPosMapper.CellPos mapPresenterToModel = this.mCellPosMapper.mapPresenterToModel(i6, i7, i5, i4);
        itemInfo.container = i4;
        itemInfo.cellX = mapPresenterToModel.cellX;
        itemInfo.cellY = mapPresenterToModel.cellY;
        if (i4 != -101) {
            itemInfo.screenId = mapPresenterToModel.screenId;
            return;
        }
        if (this.mHasVerticalHotseat) {
            i6 = (LauncherAppState.getIDP(this.mContext).numDatabaseHotseatIcons - i7) - 1;
        }
        itemInfo.screenId = i6;
    }

    public final void abortDelete() {
        this.mPreparingToUndo = false;
        ((ArrayList) this.mDeleteRunnables).clear();
        this.mModel.forceReload();
    }

    public final void addItemToDatabase(final ItemInfo itemInfo, int i4, int i5, int i6, int i7) {
        updateItemInfoProps(itemInfo, i4, i5, i6, i7);
        itemInfo.id = this.mModel.getModelDbController().generateNewItemId();
        notifyOtherCallbacks(new C0399x0(1, itemInfo));
        final ModelVerifier modelVerifier = new ModelVerifier();
        final StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        Executors.MODEL_EXECUTOR.execute(new AnonymousClass1(this, new Runnable() { // from class: com.android.launcher3.model.y0
            @Override // java.lang.Runnable
            public final void run() {
                ModelWriter.c(ModelWriter.this, itemInfo, stackTrace, modelVerifier);
            }
        }));
    }

    public final void addOrMoveItemInDatabase(ItemInfo itemInfo, int i4, int i5, int i6, int i7) {
        if (itemInfo.id == -1) {
            addItemToDatabase(itemInfo, i4, i5, i6, i7);
        } else {
            moveItemInDatabase(itemInfo, i4, i5, i6, i7);
        }
    }

    public final void commitDelete() {
        this.mPreparingToUndo = false;
        List list = this.mDeleteRunnables;
        ((ArrayList) list).forEach(new C0403z0());
        ((ArrayList) list).clear();
    }

    public final void deleteFolderAndContentsFromDatabase(FolderInfo folderInfo) {
        ModelVerifier modelVerifier = new ModelVerifier();
        notifyOtherCallbacks(new C0397w0(0, Collections.singleton(folderInfo)));
        enqueueDeleteRunnable(new AnonymousClass1(this, new RunnableC0391t0(this, folderInfo, modelVerifier, 0)));
    }

    public final void deleteItemFromDatabase(ItemInfo itemInfo, String str) {
        deleteItemsFromDatabase(Arrays.asList(itemInfo), str);
    }

    public final void deleteItemsFromDatabase(Predicate predicate, String str) {
        deleteItemsFromDatabase((Collection) StreamSupport.stream(this.mBgDataModel.itemsIdMap.spliterator(), false).filter(predicate).collect(Collectors.toList()), str);
    }

    public final void deleteWidgetInfo(LauncherAppWidgetInfo launcherAppWidgetInfo, LauncherWidgetHolder launcherWidgetHolder, String str) {
        notifyOtherCallbacks(new C0397w0(0, Collections.singleton(launcherAppWidgetInfo)));
        if (launcherWidgetHolder != null) {
            boolean z4 = true;
            if (!(launcherAppWidgetInfo.appWidgetId <= -100)) {
                int i4 = launcherAppWidgetInfo.restoreStatus;
                if ((i4 & 1) != 0 && (i4 & 16) != 16) {
                    z4 = false;
                }
                if (z4) {
                    enqueueDeleteRunnable(new AnonymousClass1(this, new RunnableC0395v0(0, launcherWidgetHolder, launcherAppWidgetInfo)));
                }
            }
        }
        deleteItemFromDatabase(launcherAppWidgetInfo, str);
    }

    public final void modifyItemInDatabase(ItemInfo itemInfo, int i4, int i5, int i6, int i7, int i8, int i9) {
        updateItemInfoProps(itemInfo, i4, i5, i6, i7);
        itemInfo.spanX = i8;
        itemInfo.spanY = i9;
        notifyOtherCallbacks(new C0399x0(0, itemInfo));
        Executors.MODEL_EXECUTOR.execute(new UpdateItemRunnable(itemInfo, new C0389s0(this, itemInfo, 0)));
    }

    public final void moveItemInDatabase(ItemInfo itemInfo, int i4, int i5, int i6, int i7) {
        updateItemInfoProps(itemInfo, i4, i5, i6, i7);
        notifyOtherCallbacks(new C0399x0(0, itemInfo));
        enqueueDeleteRunnable(new UpdateItemRunnable(itemInfo, new C0389s0(this, itemInfo, 2)));
    }

    public final void moveItemsInDatabase(ArrayList arrayList, int i4) {
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        notifyOtherCallbacks(new C0397w0(1, arrayList));
        for (int i5 = 0; i5 < size; i5++) {
            ItemInfo itemInfo = (ItemInfo) arrayList.get(i5);
            updateItemInfoProps(itemInfo, i4, 0, itemInfo.cellX, itemInfo.cellY);
            ContentValues contentValues = new ContentValues();
            contentValues.put("container", Integer.valueOf(itemInfo.container));
            contentValues.put("cellX", Integer.valueOf(itemInfo.cellX));
            contentValues.put("cellY", Integer.valueOf(itemInfo.cellY));
            contentValues.put("rank", Integer.valueOf(itemInfo.rank));
            contentValues.put("screen", Integer.valueOf(itemInfo.screenId));
            arrayList2.add(contentValues);
        }
        enqueueDeleteRunnable(new UpdateItemsRunnable(arrayList, arrayList2));
    }

    public final void prepareToUndoDelete() {
        if (this.mPreparingToUndo) {
            return;
        }
        List list = this.mDeleteRunnables;
        ((ArrayList) list).isEmpty();
        ((ArrayList) list).clear();
        this.mPreparingToUndo = true;
    }

    public final void updateItemInDatabase(ItemInfo itemInfo) {
        notifyOtherCallbacks(new C0399x0(0, itemInfo));
        Executors.MODEL_EXECUTOR.execute(new UpdateItemRunnable(itemInfo, new C0389s0(this, itemInfo, 1)));
    }

    public final void deleteItemsFromDatabase(Collection collection, String str) {
        ModelVerifier modelVerifier = new ModelVerifier();
        StringBuilder sb = new StringBuilder("removing items from db ");
        sb.append((String) collection.stream().map(new C0393u0()).collect(Collectors.joining(",")));
        sb.append(". Reason: [");
        if (TextUtils.isEmpty(str)) {
            str = "unknown";
        }
        sb.append(str);
        sb.append("]");
        FileLog.d("ModelWriter", sb.toString());
        notifyOtherCallbacks(new C0397w0(0, collection));
        enqueueDeleteRunnable(new AnonymousClass1(this, new RunnableC0391t0(this, collection, modelVerifier, 1)));
    }
}
