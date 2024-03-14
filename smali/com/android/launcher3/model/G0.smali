.class public final synthetic Lcom/android/launcher3/model/G0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/model/PackageUpdatedTask;

.field public final synthetic b:Ljava/util/function/Predicate;

.field public final synthetic c:Lcom/android/launcher3/util/IntSet;

.field public final synthetic d:Z

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Lcom/android/launcher3/util/IntSet;

.field public final synthetic g:Ljava/util/HashSet;

.field public final synthetic h:Ljava/util/HashMap;

.field public final synthetic i:Lcom/android/launcher3/icons/IconCache;

.field public final synthetic j:Lcom/android/launcher3/util/FlagOp;

.field public final synthetic k:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLandroid/content/Context;Lcom/android/launcher3/util/IntSet;Ljava/util/HashSet;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/G0;->a:Lcom/android/launcher3/model/PackageUpdatedTask;

    iput-object p2, p0, Lcom/android/launcher3/model/G0;->b:Ljava/util/function/Predicate;

    iput-object p3, p0, Lcom/android/launcher3/model/G0;->c:Lcom/android/launcher3/util/IntSet;

    iput-boolean p4, p0, Lcom/android/launcher3/model/G0;->d:Z

    iput-object p5, p0, Lcom/android/launcher3/model/G0;->e:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/launcher3/model/G0;->f:Lcom/android/launcher3/util/IntSet;

    iput-object p7, p0, Lcom/android/launcher3/model/G0;->g:Ljava/util/HashSet;

    iput-object p8, p0, Lcom/android/launcher3/model/G0;->h:Ljava/util/HashMap;

    iput-object p9, p0, Lcom/android/launcher3/model/G0;->i:Lcom/android/launcher3/icons/IconCache;

    iput-object p10, p0, Lcom/android/launcher3/model/G0;->j:Lcom/android/launcher3/util/FlagOp;

    iput-object p11, p0, Lcom/android/launcher3/model/G0;->k:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 12

    iget-object v0, p0, Lcom/android/launcher3/model/G0;->a:Lcom/android/launcher3/model/PackageUpdatedTask;

    iget-object v1, p0, Lcom/android/launcher3/model/G0;->b:Ljava/util/function/Predicate;

    iget-object v2, p0, Lcom/android/launcher3/model/G0;->c:Lcom/android/launcher3/util/IntSet;

    iget-boolean v3, p0, Lcom/android/launcher3/model/G0;->d:Z

    iget-object v4, p0, Lcom/android/launcher3/model/G0;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/launcher3/model/G0;->f:Lcom/android/launcher3/util/IntSet;

    iget-object v6, p0, Lcom/android/launcher3/model/G0;->g:Ljava/util/HashSet;

    iget-object v7, p0, Lcom/android/launcher3/model/G0;->h:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/launcher3/model/G0;->i:Lcom/android/launcher3/icons/IconCache;

    iget-object v9, p0, Lcom/android/launcher3/model/G0;->j:Lcom/android/launcher3/util/FlagOp;

    iget-object v10, p0, Lcom/android/launcher3/model/G0;->k:Ljava/util/ArrayList;

    move-object v11, p1

    check-cast v11, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static/range {v0 .. v11}, Lcom/android/launcher3/model/PackageUpdatedTask;->m(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLandroid/content/Context;Lcom/android/launcher3/util/IntSet;Ljava/util/HashSet;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method
