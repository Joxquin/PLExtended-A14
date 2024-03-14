.class public final synthetic Lcom/android/launcher3/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/LauncherProvider$SqlArguments;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherProvider$SqlArguments;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/p0;->a:Lcom/android/launcher3/LauncherProvider$SqlArguments;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/p0;->a:Lcom/android/launcher3/LauncherProvider$SqlArguments;

    check-cast p1, Lcom/android/launcher3/model/ModelDbController;

    sget v0, Lcom/android/launcher3/LauncherProvider;->d:I

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/launcher3/model/ModelDbController;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
