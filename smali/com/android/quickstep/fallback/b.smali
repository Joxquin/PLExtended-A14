.class public final synthetic Lcom/android/quickstep/fallback/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/fallback/FallbackRecentsStateController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/fallback/FallbackRecentsStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/fallback/b;->a:Lcom/android/quickstep/fallback/FallbackRecentsStateController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/fallback/b;->a:Lcom/android/quickstep/fallback/FallbackRecentsStateController;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->a(Lcom/android/quickstep/fallback/FallbackRecentsStateController;Ljava/lang/Boolean;)V

    return-void
.end method
