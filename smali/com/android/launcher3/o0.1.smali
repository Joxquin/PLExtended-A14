.class public final synthetic Lcom/android/launcher3/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:[Landroid/database/Cursor;

.field public final synthetic b:Lcom/android/launcher3/LauncherProvider$SqlArguments;

.field public final synthetic c:[Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>([Landroid/database/Cursor;Lcom/android/launcher3/LauncherProvider$SqlArguments;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/o0;->a:[Landroid/database/Cursor;

    iput-object p2, p0, Lcom/android/launcher3/o0;->b:Lcom/android/launcher3/LauncherProvider$SqlArguments;

    iput-object p3, p0, Lcom/android/launcher3/o0;->c:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher3/o0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/o0;->a:[Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/launcher3/o0;->b:Lcom/android/launcher3/LauncherProvider$SqlArguments;

    iget-object v4, p0, Lcom/android/launcher3/o0;->c:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/launcher3/o0;->d:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/model/ModelDbController;

    sget p0, Lcom/android/launcher3/LauncherProvider;->d:I

    iget-object v3, v1, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/model/ModelDbController;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    return p1
.end method
