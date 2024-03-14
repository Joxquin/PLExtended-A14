.class public final LU1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final a:LU1/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LU1/f;

    invoke-direct {v0}, LU1/f;-><init>()V

    sput-object v0, LU1/f;->a:LU1/f;

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    new-instance p0, LU1/k;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, LU1/k;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
