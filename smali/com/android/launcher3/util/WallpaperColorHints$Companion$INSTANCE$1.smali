.class final Lcom/android/launcher3/util/WallpaperColorHints$Companion$INSTANCE$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/WallpaperColorHints$Companion$INSTANCE$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/WallpaperColorHints$Companion$INSTANCE$1;

    invoke-direct {v0}, Lcom/android/launcher3/util/WallpaperColorHints$Companion$INSTANCE$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/WallpaperColorHints$Companion$INSTANCE$1;->INSTANCE:Lcom/android/launcher3/util/WallpaperColorHints$Companion$INSTANCE$1;

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    new-instance p0, Lcom/android/launcher3/util/WallpaperColorHints;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/WallpaperColorHints;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
