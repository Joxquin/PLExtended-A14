.class final Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;
.super Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;
.source "SourceFile"


# instance fields
.field private final mItem:Lcom/android/launcher3/model/data/ItemInfo;

.field private final mItemId:I

.field private final mWriter:Ljava/util/function/Supplier;

.field final synthetic this$0:Lcom/android/launcher3/model/ModelWriter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/s0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    iput-object p2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mItem:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p3, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mWriter:Ljava/util/function/Supplier;

    iget p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iput p1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mItemId:I

    return-void
.end method


# virtual methods
.method public final runImpl()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v0}, Lcom/android/launcher3/model/ModelWriter;->j(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mWriter:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/ContentWriter;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v2}, Lcom/android/launcher3/model/ModelWriter;->i(Lcom/android/launcher3/model/ModelWriter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/ContentWriter;->getValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mItemId:I

    invoke-static {v2}, Lcom/android/launcher3/provider/LauncherDbUtils;->itemIdMatch(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "favorites"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/launcher3/model/ModelDbController;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mItem:Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mItemId:I

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->updateItemArrays(ILcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method
