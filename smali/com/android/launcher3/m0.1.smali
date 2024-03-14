.class public final synthetic Lcom/android/launcher3/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/LauncherProvider$SqlArguments;

.field public final synthetic b:Landroid/content/ContentValues;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherProvider$SqlArguments;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/m0;->a:Lcom/android/launcher3/LauncherProvider$SqlArguments;

    iput-object p2, p0, Lcom/android/launcher3/m0;->b:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/m0;->a:Lcom/android/launcher3/LauncherProvider$SqlArguments;

    iget-object p0, p0, Lcom/android/launcher3/m0;->b:Landroid/content/ContentValues;

    check-cast p1, Lcom/android/launcher3/model/ModelDbController;

    sget v1, Lcom/android/launcher3/LauncherProvider;->d:I

    iget-object v1, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p1, v1, p0, v2, v0}, Lcom/android/launcher3/model/ModelDbController;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
